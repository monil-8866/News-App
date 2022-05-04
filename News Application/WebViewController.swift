//
//  WebViewController.swift
//  News Application
//
//  Created by Dhruvil Moradiya on 02/05/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var newsWebView: WKWebView!
    var newsData: Articles!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlReuest: URLRequest = URLRequest(url: URL(string: newsData.url!)!)
        newsWebView.load(urlReuest)
    }
}
