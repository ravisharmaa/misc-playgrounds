import UIKit
import WebKit
import Alamofire

class NewsDetailsViewController: UIViewController, WKNavigationDelegate {

    //MARK: - Outlets:
    
    
    @IBOutlet weak var imageView: UIImageView?
    
    @IBOutlet weak var titleLabel: UILabel?
    
    @IBOutlet weak var authorLabel: UILabel?
    
    @IBOutlet weak var webView: WKWebView?
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint?
        
    // MARK: - Properties
    
    var article: Article?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView?.image = nil
        prepareContentsForView()
        
        
    }
    
    func prepareContentsForView() -> Void {
        
        guard let article = article else { return }
        
        self.title = article.title
        
        self.titleLabel?.text = article.title
        
        self.authorLabel?.text = article.author
        
        
        self.webView?.navigationDelegate = self
        
        webView?.scrollView.isScrollEnabled = false
        
        webView?.loadHTMLString("""
            <html>
                   <head>
                   <style>body { font-family: -apple-system, Helvetica; sans-serif; }</style>
                       <meta name="viewport" content="width=device-width, initial-scale=1">
                   </head>
                   <body>
                       \(article.content)
                   </body>
               </html>
        """, baseURL: nil)
        
        guard let thumbURL = URL(string: article.thumbnailURL) else { return }
        
        Alamofire.request(thumbURL).responseData { response in
            
            guard let image = response.result.value else { return }
            
            self.imageView?.image = UIImage(data: image)
            
        }
        
    }


}
