import UIKit
import WebKit

class WKWebViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var selectTypeBtn: UIButton!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectTypeBtn.layer.cornerRadius = selectTypeBtn.frame.height / 2
        buttons.forEach { (btn) in
            btn.layer.cornerRadius = btn.frame.height / 2
            btn.isHidden = true
            btn.alpha = 0
        }
        activityIndicator.startAnimating()
    }
    
    // MARK: Action Method for button
    @IBAction func selectType(_ sender: UIButton) {
        buttons.forEach { (btn) in
            UIView.animate(withDuration: 0.7) {
                btn.isHidden = !btn.isHidden
                btn.alpha = btn.alpha == 0 ? 1 : 0
                btn.layoutIfNeeded()
            }
        }
    }
    
    // MARK: Action Method for button
    @IBAction func buttonClicked(_ sender: UIButton) {
        let url: URL?
        let request: URLRequest
        
        if let label = sender.titleLabel?.text {
            if label == "PDF" {
                let path = Bundle.main.path(forResource: "Exercise", ofType: "pdf")
                url = URL(fileURLWithPath: path!)
                request = URLRequest(url: url!)
                webView.load(request)
                self.webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
            } else if label == "URL" {
                url = URL(string: "https://www.apple.com")
                request = URLRequest(url: url!)
                webView.load(request)
            } else if label == "HTML" {
                let path = Bundle.main.path(forResource: "list", ofType: "html")
                url = URL(fileURLWithPath: path!)
                request = URLRequest(url: url!)
                webView.load(request)
            }
        }
    }
    
}

// MARK: WKNavigationDelegate and its methods
extension WKWebViewController: WKNavigationDelegate {
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading" {
            webView.isLoading ? activityIndicator.startAnimating() : activityIndicator.stopAnimating()
            activityIndicator.hidesWhenStopped = !webView.isLoading
        }
    }
    
}

