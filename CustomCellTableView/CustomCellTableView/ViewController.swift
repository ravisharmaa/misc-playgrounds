

import UIKit

class ViewController: UIViewController {
    
    var servers = [Response]()
    
    let apiUrl = "https://uatmonitoring.javra.com/api/dashboard"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: self.apiUrl) else { return }
        
        getDataFrom(url)
    }
    
    fileprivate func getDataFrom(_ url: URL) {
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let apiResponse = try JSONDecoder().decode(Response.self, from: data)
                self.server = apiResponse.servers
                print(server)
            } catch let jsonError {
                print(jsonError)
            }
            }.resume()
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return servers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    
}

