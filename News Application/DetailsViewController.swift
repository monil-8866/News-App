//
//  DetailsViewController.swift
//  News Application
//
//  Created by Dhruvil Moradiya on 02/05/22.
//

import UIKit

class NewsDetailsViewController: UIViewController {

    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var newsData: Articles!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    func setData() {
        let url = URL(string: newsData.urlToImage!)!
        if let data = try? Data(contentsOf: url) {
            newsImageView.image = UIImage(data: data)
        }
        titleLabel.text = newsData.title! + "."
        descriptionLabel.text = newsData.description
    }
    
    @IBAction func readMoreButtonClick(_ sender: UIButton) {
        goToWebViewController()
    }
    
    func goToWebViewController() {
        let webViewController: WebViewController = storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        webViewController.newsData = newsData
        navigationController?.present(webViewController, animated: true, completion: nil)
    }
}
