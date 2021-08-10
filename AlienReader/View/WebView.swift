//
//  WebView.swift
//  AlienReader
//
//  Created by Hao Nguyen on 10/08/2021.
//

import SwiftUI

struct WebView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: Context) -> WebviewController {
            let webviewController = WebviewController()

            let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
            webviewController.webview.load(request)

            return webviewController
        }

        func updateUIViewController(_ webviewController: WebviewController, context: Context) {
            let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
            webviewController.webview.load(request)
        }
}

