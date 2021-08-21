//
//  URLImage.swift
//  URLImageModule
//
//  Created by Cem Yilmaz on 20.08.21.
//

import SwiftUI

#if canImport(UIKit)
public struct URLImage<Content: View, LoadingContent: View, DefaultContent: View>: View {

    public init(
        url: URL,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?,
        defaultContent: (() -> DefaultContent)?,
        content: ((_ image: Image) -> Content)?
    ) {
        self.urlRequest = URLRequest(url: url)
        if let header = header {
            self.urlRequest?.addValue(header.value, forHTTPHeaderField: header.key)
        }

        self.loadingContent = loadingContent
        self.defaultContent = defaultContent
        self.content = content

        self._isLoading = State(initialValue: true)
    }

    public init(
        url: String,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?,
        defaultContent: (() -> DefaultContent)?,
        content: ((_ image: Image) -> Content)?
    ) {
        if let unwrappedURL = URL(string: url) {

            self.urlRequest = URLRequest(url: unwrappedURL)
            if let header = header {
                self.urlRequest?.addValue(header.value, forHTTPHeaderField: header.key)
            }

            self.loadingContent = loadingContent
            self.defaultContent = defaultContent
            self.content = content

            self._isLoading = State(initialValue: true)

        } else {

            self.urlRequest = nil

            self.loadingContent = loadingContent
            self.defaultContent = defaultContent
            self.content = nil

            self._isLoading = State(initialValue: false)

        }
    }

    private let loadingContent: (() -> LoadingContent)?
    private let defaultContent: (() -> DefaultContent)?
    private let content: ((_ image: Image) -> Content)?

    private var urlRequest: URLRequest?

    @State private var isLoading: Bool

    @State private var downloadedImage: UIImage?

    public var body: some View {

        ZStack {

            if let downloadedImage = self.downloadedImage {

                if let content = self.content {

                    content(Image(uiImage: downloadedImage))

                } else {

                    Image(uiImage: downloadedImage)

                }

            } else if self.isLoading {

                if let loadingContent = self.loadingContent {

                    loadingContent()

                } else if #available(iOS 14.0, watchOS 7.0, tvOS 14.0, *) {

                    ProgressView()

                }

            } else if let defaultContent = self.defaultContent {

                defaultContent()

            }

        }.onAppear {

            if let request = self.urlRequest {

                self.isLoading = true

                URLSession.shared.dataTask(with: request) { responseBody, responseHeader, error in

                    DispatchQueue.main.async {

                        self.isLoading = false

                        if let unwrappedResponseBody = responseBody,
                           let unwrappedResponseHeader = responseHeader as? HTTPURLResponse,
                           unwrappedResponseHeader.statusCode == 200,
                           error == nil {

                            self.downloadedImage = UIImage(data: unwrappedResponseBody)

                        }

                    }

                }.resume()

            }

        }

    }

}
#endif
