import UIKit
import MapKit

class MapDrawRouteViewController: UIViewController {

    // MARK: Outlet
    @IBOutlet weak var myMapView: MKMapView!
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        myMapView.delegate = self
        map()
    }
    
    // MARK: Draw line on mapview
    func map() {
        let sourceLocation = CLLocationCoordinate2D(latitude: 23.036144, longitude: 72.628151)
        let destinationLocation = CLLocationCoordinate2D(latitude: 23.0281, longitude: 72.4994)
        
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)
        
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "Somnath Temple,Bapunagar"
                
        if let location = sourcePlacemark.location {
            sourceAnnotation.coordinate = location.coordinate
        }
                
        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.title = "Simform Solutions"
                
        if let location = destinationPlacemark.location {
            destinationAnnotation.coordinate = location.coordinate
        }
        
        self.myMapView.showAnnotations([sourceAnnotation, destinationAnnotation], animated: true)
        
        let directionRequest = MKDirections.Request()
        directionRequest.source = sourceMapItem
        directionRequest.destination = destinationMapItem
        directionRequest.transportType = .automobile
        
        let directions = MKDirections(request: directionRequest)
        directions.calculate { (response, error) -> Void in
                    
            guard let response = response else {
                if let error = error {
                    print("Error: \(error)")
                }
                return
            }
                    
            let route = response.routes[0]
            self.myMapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
                    
            let rect = route.polyline.boundingMapRect
            self.myMapView.setRegion(MKCoordinateRegion(rect), animated: true)
        }
    }
    
}

// MARK: MapViewDelegate and its methods
extension MapDrawRouteViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = .red
        renderer.lineWidth = 4.0
        return renderer
    }
    
}

