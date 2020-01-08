import UIKit
import MapKit

class PlacesViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView :MKMapView?
    
    @IBOutlet weak var tableView :UITableView?
    
    var locationManager :CLLocationManager?
    
    // Places Dictionary
    var  places = [[String: Any]]()
    
    //MARK:- Semaphore
    
    // A semaphore i.e a flag to toggle on and off
    
    var isQueryPending :Bool = false
    
    // Api Url
    
    var apiUrl = "https://api.foursquare.com/v2/venues/search"
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Initialize location manager
        
        self.locationManager = CLLocationManager()
        
        self.locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager?.distanceFilter = 50.0
        
        self.locationManager?.requestWhenInUseAuthorization()
        
        // setting the delegate to self
        
        self.locationManager?.delegate = self
        
        // getting the delegate methods
        
        self.locationManager?.startUpdatingLocation()
        
        //setting the map view delegate to self
        
        self.mapView?.delegate = self
        
        // setting the table view delegate
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard mapView != nil else { return }
        
        guard let newLocation = locations.last else { return }
        
        let region = MKCoordinateRegion(center: newLocation.coordinate, latitudinalMeters: 200, longitudinalMeters: 200)
        
        let adjustedRegion = mapView!.regionThatFits(region)
        
        mapView?.setRegion(adjustedRegion, animated: true)
        
        prepareQuery(location: newLocation)
        
    }
    
    func prepareQuery(location: CLLocation) {
        
        if self.isQueryPending == true {
            return
        }
        
        self.isQueryPending = true
        
        // prepare query
        let clientId = prepareQueryItems("client_id", "WULMV14QD51PJAXIXGGP5PQBBGQJUKEYCNEEBUQFGQ2CAPMX")
        
        let clientSecret = prepareQueryItems("client_secret", "EJTWQR2SOIHCGBIVRLGF3RMKF50ZKOTKQSJ0BMCC5SH4YNHB")
        
        let version  = prepareQueryItems("v", "20191212")
        
        let coordinate = prepareQueryItems("ll", "\(location.coordinate.latitude),\(location.coordinate.longitude)")
        
        let query = prepareQueryItems("query", "coffee")
        
        let intent = prepareQueryItems("intent", "browse")
        
        let radius = prepareQueryItems("radius", "250")
        
        
        var urlComponents = URLComponents(string: self.apiUrl)
        
        urlComponents?.queryItems = [clientId, clientSecret, version, coordinate, query, intent, radius]
        
        
        // preapere to send a http request
        
        guard let url = urlComponents?.url else { return }
        
        let task = URLSession.shared.dataTask(with: url,  completionHandler: { data, response, error in
            
            if error != nil {
                print("got error with" + error!.localizedDescription)
                
                return
            }
            
            if data == nil || response == nil {
                print("*** Some thing went wrong**")
                
                return
            }
            
            do {
                let jsonData = try JSONSerialization.jsonObject(with: data!, options: [])
                
                //type casting
                
                if  let jsonObject      = jsonData as? [String:Any],
                    let jsonResponse    = jsonObject["response"] as? [String:Any],
                    let venues          = jsonResponse["venues"] as? [[String:Any]]{
                    
                    for venue in venues {
                        if  let name      = venue["name"] as? String,
                            let location  = venue["location"] as? [String:Any],
                            let lat  = location["lat"] as? Double,
                            let long = location["lng"] as? Double,
                            let address   = location["formattedAddress"] as? [String] {
                            self.places.append([
                                "name": name,
                                "location": location,
                                "lat" : lat,
                                "lon":long,
                                "address": address.joined(separator: " ")
                            ])
                        }
                    }
                }
            } catch let jsonError {
                print("**** ERROR \(jsonError.localizedDescription)")
            }
            
            self.isQueryPending = false
            
            DispatchQueue.main.async { [weak self] in
                self?.updateLocation()
                // reloading the data
                self?.tableView?.reloadData()
            }
        })
        
        task.resume()
        
    }
    
    // Preapres Query With required attributes
    
    func prepareQueryItems(_ name :String, _ value: String) -> URLQueryItem {
        
        return URLQueryItem(name: name, value: value)
    }
    
    
}

// Extension to load MKMapViewDelegate methods
extension PlacesViewController {
    
    // annotate the map, i.e update the pins with the location recived from the api
    
    func updateLocation() {
        
        guard mapView != nil else { return }
        
        //removing the existing annotations
        
        mapView!.removeAnnotations(mapView!.annotations)
        
        for place in self.places {
            if  let name         = place["name"] as? String,
                let latitude     = place["lat"] as? CLLocationDegrees,
                let longitude    = place["lon"] as? CLLocationDegrees {
                
                let annotation = MKPointAnnotation()
                
                //setting up the co-ordinate of the annotation
                
                annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                annotation.title = name
                
                mapView!.addAnnotation(annotation)
                
            }
        }
        
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation.isKind(of: MKUserLocation.self) {
            return nil
        }
        
        var view = mapView.dequeueReusableAnnotationView(withIdentifier: "annotationView")
        
        if view == nil {
            view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "annotationView")
            
            view!.canShowCallout = true
        } else {
            view!.annotation = annotation
        }
        
        return view
    }
    
}

//MARK:- Extension For TableView

extension PlacesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellIdentifier")
        }
        
        cell!.textLabel?.text = places[indexPath.row]["name"] as? String
        cell!.detailTextLabel?.text = places[indexPath.row]["address"] as? String
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        guard mapView != nil else { return }
        
        guard let tappedName = places[indexPath.row]["name"] as? String else { return }
        
        
        for annotation in mapView!.annotations {
            mapView!.deselectAnnotation(annotation, animated: false)
            
    
            if tappedName == annotation.title {
                
                mapView!.selectAnnotation(annotation, animated: true)
                
                mapView!.setCenter(annotation.coordinate, animated: true)
            }
        }
    }
    
    
}
