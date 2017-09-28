//
//  FirstViewController.swift
//  DC Test App
//
//  Created by Kunihiko Ohnaka on 2017/09/28.
//  Copyright © 2017年 Kunihiko Ohnaka. All rights reserved.
//

import UIKit
import WebKit

class FirstViewController: UIViewController {

    @IBOutlet weak var addressBar: UIStackView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var reloadButton: UIButton!
    private var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TextField
        self.addressTextField.delegate = self
        
        // WebView
        let webViewConf = WKWebViewConfiguration()
        self.webView = WKWebView(frame: .zero, configuration: webViewConf)
        self.webView.navigationDelegate = self
        self.webView.uiDelegate = self
        self.webView.allowsBackForwardNavigationGestures = true
        self.webView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.webView)
        let topConstraint = NSLayoutConstraint(item: webView,
                                               attribute: NSLayoutAttribute.top,
                                               relatedBy: NSLayoutRelation.equal,
                                               toItem: self.addressBar,
                                               attribute: NSLayoutAttribute.bottom,
                                               multiplier: 1.0,
                                               constant: 0)
        let leadingConstraint = NSLayoutConstraint(item: webView,
                                                   attribute: NSLayoutAttribute.leading,
                                                   relatedBy: NSLayoutRelation.equal,
                                                   toItem: self.view,
                                                   attribute: NSLayoutAttribute.leading,
                                                   multiplier: 1.0,
                                                   constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: webView,
                                                  attribute: NSLayoutAttribute.bottom,
                                                  relatedBy: NSLayoutRelation.equal,
                                                  toItem: self.view,
                                                  attribute: NSLayoutAttribute.bottom,
                                                  multiplier: 1.0,
                                                  constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: webView,
                                                    attribute: NSLayoutAttribute.trailing,
                                                    relatedBy: NSLayoutRelation.equal,
                                                    toItem: self.view,
                                                    attribute: NSLayoutAttribute.trailing,
                                                    multiplier: 1.0,
                                                    constant: 0)
        
        self.view.addConstraint(topConstraint)
        self.view.addConstraint(bottomConstraint)
        self.view.addConstraint(leadingConstraint)
        self.view.addConstraint(trailingConstraint)

        //
        self.load(url: URL(string: "http://deviceconnectusers.github.io/manager/#demo"))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func load(url: URL?) {
        guard let url = url else {
            return
        }
        self.addressTextField.text = url.absoluteString
        let request = URLRequest(url: url)
        self.webView.load(request)
    }

    @IBAction func backButtonTouchDown(_ sender: Any) {
        self.webView.goBack()
    }
    
    @IBAction func forwardButtonTouchDown(_ sender: Any) {
        self.webView.goForward()
    }

    @IBAction func addressTextFieldEditingDidEnd(_ sender: Any) {
        print("editingDidEnd: \(self.addressTextField.text ?? "")")
    }

    @IBAction func addressTextFieldEditingChanged(_ sender: Any) {
        print("editingChanged: \(self.addressTextField.text ?? "")")
    }
   
    
    @IBAction func reloadButtonTouchDown(_ sender: Any) {
        self.webView.reload()
    }
}


extension FirstViewController : WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = navigationAction.request.url else {
            assertionFailure()
            decisionHandler(.cancel)
            return
        }
        print("url: \(url)")
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        let alertController = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            completionHandler()
        }))
        self.present(alertController, animated: true) {
        }
    }
}

extension FirstViewController : WKUIDelegate {
    
}

extension FirstViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
