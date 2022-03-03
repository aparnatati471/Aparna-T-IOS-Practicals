import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var mapview: MKMapView!
    
    // MARK: Variable Declaration And Initialization
    var locationManager = CLLocationManager()
    var pickerData: [String] = [String]()
    var latitude = [22.309425, 19.663280, 15.9129]
    var lognitude = [72.136230, 75.300293, 79.7400]
    
    // MARK: View Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerview.delegate = self
        self.pickerview.dataSource = self
        pickerData = ["Gujarat", "Maharastra", "Andhra Pradesh"]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
   
}

// MARK: CLLocationManagerDelegate Extension and Its Methods
extension MapViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.first != nil {
            locationManager.stopUpdatingLocation()
        }
    }
    
}

extension MapViewController: UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
}

// MARK: UIPickerViewDataSource Extension and Its Methods
extension MapViewController: UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let cordinate = CLLocationCoordinate2D(latitude: latitude[row], longitude: lognitude[row])
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: cordinate, span: span)
        mapview.setRegion(region, animated: true)
        let pin = MKPointAnnotation()
        pin.coordinate = cordinate
        mapview.addAnnotation(pin)
    }
    
}
