//
//  StockWebView.swift
//  investment 101
//
//  Created by Celine Tsai on 30/10/23.


import SwiftUI
import WebKit

// Create a UIViewRepresentable SwiftUI view that wraps a WKWebView
struct WebView1: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator // Set the navigation delegate
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView1
        
        init(_ parent: WebView1) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if let host = navigationAction.request.url?.host {
                if host == "https://www.bloomberg.com/markets/stocks" {
                    decisionHandler(.allow)
                } else {
                    decisionHandler(.cancel) // Cancel navigation to other hosts
                }
            } else {
                decisionHandler(.cancel) // Cancel if there's no host
            }
        }
    }
}

struct StockWebView: View {
    var body: some View {
        // Use the WebView view and pass the URL you want to load
        WebView1(urlString: "https://www.bloomberg.com/markets/stocks")
    }
}

struct StockWebView_Previews: PreviewProvider {
    static var previews: some View {
        StockWebView()
    }
}



