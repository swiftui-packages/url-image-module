//
//  Demo.swift
//  URLImageModule
//
//  Created by Cem Yilmaz on 20.08.21.
//

import SwiftUI

#if canImport(UIKit)
public struct URLImage_Previews: PreviewProvider {

    public static var previews: some View {

        VStack {

            URLImage(
                url: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"
            )
            URLImage(
                url: URL(string: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png")!
            )

            URLImage(
                url: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            )

            URLImage(
                url: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.pn",
                defaultContent: {
                    Text("Leider konnte das Bild nicht geladen werden")
                }
            )

            URLImage(
                url: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
                loadingContent: {
                    Text("Lädt...")
                }
            )

            URLImage(
                url: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
                loadingContent: {
                    VStack {
                        if #available(iOS 14.0, watchOS 7.0, tvOS 14.0, *) {
                            ProgressView()
                        }
                        Text("Lädt")
                    }
                },
                defaultContent: {
                    Text("Leider konnte das Bild nicht geladen werden")
                },
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            )

        }

    }

}
#endif
