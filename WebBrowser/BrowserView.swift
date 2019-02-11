//
//  BrowserView.swift
//  WebBrowser
//
//  Created by Andrew Chen on 2/10/19.
//  Copyright © 2019 Andrew Chen. All rights reserved.
//

import UIKit
import WebKit

class BrowserView: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let urlString: String = "http://www.apple.com"
        let url:URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}
