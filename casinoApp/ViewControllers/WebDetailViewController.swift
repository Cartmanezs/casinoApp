//
//  WebDetailViewController.swift
//  casinoApp
//
//  Created by Ingvar on 19.04.2021.
//

import UIKit
import WebKit

class WebDetailViewController: UIViewController, WKNavigationDelegate {

    private var webView: WKWebView!
    private let url = URL(string: "https://www.1x-bad.ru")
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
    }
}
