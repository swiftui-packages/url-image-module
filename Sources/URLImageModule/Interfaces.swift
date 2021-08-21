//
//  Interfaces.swift
//  URLImageModule
//
//  Created by Cem Yilmaz on 20.08.21.
//

import SwiftUI

#if canImport(UIKit)
public extension URLImage where LoadingContent == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil,
        defaultContent: (() -> DefaultContent)?,
        content: ((_ image: Image) -> Content)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: defaultContent,
            content: content
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil,
        defaultContent: (() -> DefaultContent)?,
        content: ((_ image: Image) -> Content)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: defaultContent,
            content: content
        )
    }
}

public extension URLImage where DefaultContent == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?,
        content: ((_ image: Image) -> Content)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: loadingContent,
            defaultContent: nil,
            content: content
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?,
        content: ((_ image: Image) -> Content)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: loadingContent,
            defaultContent: nil,
            content: content
        )
    }
}

public extension URLImage where Content == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?,
        defaultContent: (() -> DefaultContent)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: loadingContent,
            defaultContent: defaultContent,
            content: nil
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?,
        defaultContent: (() -> DefaultContent)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: loadingContent,
            defaultContent: defaultContent,
            content: nil
        )
    }
}

public extension URLImage where LoadingContent == EmptyView, DefaultContent == EmptyView, Content == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: nil,
            content: nil
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: nil,
            content: nil
        )
    }
}

public extension URLImage where LoadingContent == EmptyView, DefaultContent == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil,
        content: ((_ image: Image) -> Content)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: nil,
            content: content
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil,
        content: ((_ image: Image) -> Content)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: nil,
            content: content
        )
    }
}

public extension URLImage where LoadingContent == EmptyView, Content == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil,
        defaultContent: (() -> DefaultContent)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: defaultContent,
            content: nil
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil,
        defaultContent: (() -> DefaultContent)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: nil,
            defaultContent: defaultContent,
            content: nil
        )
    }
}

public extension URLImage where DefaultContent == EmptyView, Content == EmptyView {
    init(
        url: URL,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: loadingContent,
            defaultContent: nil,
            content: nil
        )
    }

    init(
        url: String,
        header: (key: String, value: String)? = nil,
        loadingContent: (() -> LoadingContent)?
    ) {
        self.init(
            url: url,
            header: header,
            loadingContent: loadingContent,
            defaultContent: nil,
            content: nil
        )
    }
}
#endif
