import UIKit
import RealmSwift

class NewsTableViewController: UITableViewController {
    
    // MARK:- Data Source For the App
    
    var articles: Results<Article> {
        get {
            let realm = try! Realm()
            return realm.objects(Article.self)
        }
    }
    
    // MARK: - Newsdetails view nib
    
    let newsDetailsControllerNibName: String = "NewsDetailsViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // listen for the notification
        NotificationCenter.default.addObserver(self, selector: #selector(onArticlesRecieved(notification:)), name: Api.articlesReceivedNotification, object: nil)
        
        Api.sharedInstance.fetchData()
    }
    
    //MARK:- Objc function event based approach, this listens for the event fired within the lifecycle
    @objc func onArticlesRecieved(notification: Notification) {
        
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.articles.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
        
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "reuseIdentifier")
        }
        
        cell!.textLabel?.text = articles[indexPath.row].title
        
        cell!.detailTextLabel?.text = articles[indexPath.row].excerpt
        
        return cell!
    }
    
    // MARK: - This helps to push another view controller for the row at selected index path
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let newsDetailsVc: NewsDetailsViewController = NewsDetailsViewController(nibName: newsDetailsControllerNibName , bundle: nil)
        
        newsDetailsVc.article = articles[indexPath.row]
        
        navigationController?.pushViewController(newsDetailsVc, animated: true)
    }
    
    // sets the row height
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
}
