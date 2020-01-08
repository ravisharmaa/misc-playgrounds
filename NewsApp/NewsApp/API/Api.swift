//MARK:- External Libraries

import Foundation
import Alamofire
import SwiftyJSON
import RealmSwift

// creating a singleton
private  let sharedApiInstance = Api()

class Api {
    
    static let feedUrl: URL = URL(string: "https://learnappmaking.com/feed/json")!
    
    //fire event
    static let articlesReceivedNotification = Notification.Name("articlesReceived")
    
    
    static var sharedInstance: Api {
        return sharedApiInstance
    }
    
    func fetchData() -> Void {
        
        Alamofire.request(Api.feedUrl).responseJSON { response in
            
            if let data = response.data {
                
                do {
                    let json = try JSON(data: data)
                    self.processJson(json)
                } catch {
                    print("JSON ERROR \(error)")
                }
            } else {
                print(response.result.error ?? "Error Occured")
            }
        }
    }
    
    
    func processJson(_ json: JSON) {
        
        let dateFormatter: DateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        
        let realm = try! Realm()
        
        realm.beginWrite()
        
        for (_, item):(String, JSON) in json {
            
            let article = Article()
            
            guard let id: Int = item["id"].int,
                let title: String = item["title"].string,
                let author: String = item["author"].string,
                let content: String = item["content"].string,
                let excerpt: String = item["excerpt"].string,
                let thumbnailURL: String = item["thumbnail"].string,
                let articleURL: String = item["permalink"].string
                
                else {
                    return
            }
            
            article.id = id
            article.title = title
            
            article.author = author
            article.content = content
            article.excerpt = excerpt
            article.thumbnailURL = thumbnailURL
            article.articleURL = articleURL
            
            
            if  let dateString = item["date"].string,
                let creationDate = dateFormatter.date(from: dateString){
                article.creationDate = creationDate
            }
            
            realm.add(article, update: .modified)
            
        }
        
        do {
            try realm.commitWrite()
            print("wrote to database")
        } catch let e {
            print("could not write to db \(e)")
        }
         
        // fires the event
        NotificationCenter.default.post(name: Api.articlesReceivedNotification, object: nil)
        
    }
    
    
}

