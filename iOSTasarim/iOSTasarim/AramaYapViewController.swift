//
//  AramaYapViewController.swift
//  iOSTasarim
//
//  Created by Hakan UNAL on 10.12.2020.
//

import UIKit
import Mapbox

class AramaYapViewController: UIViewController, MGLMapViewDelegate {

    //sk.eyJ1IjoibWlyYWdlc3NlZSIsImEiOiJja2lpMDhkZGQxeGJ0MnRyc3BzcXJ4M3VyIn0.tYVMTAnD7PdYZc1TDuYimQ
    
    @IBOutlet weak var arsamiBul: UIBarButtonItem!
    
    @IBOutlet weak var mapView: MGLMapView!
    
    @IBOutlet weak var imageViewHepsi: UIImageView!
    @IBOutlet weak var viewHepsi: UIView!
    @IBOutlet weak var viewFiltre: UIView!
    @IBOutlet weak var viewSiralama: UIView!
    @IBOutlet weak var viewGörünüm: UIView!
    @IBOutlet weak var viewSiralamaDropButton: UIView!
    @IBOutlet weak var viewGorunumDropButton: UIView!
    @IBOutlet weak var viewSag: UIView!
    @IBOutlet weak var viewSagImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mapView.delegate = self
        mapView.showsUserLocation = true
        //mapView.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: 9, animated: false)
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 16.0/255.0, green: 23.0/255.0, blue: 31.0/255.0, alpha: 1.0)
        
        /*var view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 22))
        view.backgroundColor = UIColor.black
        var barButtonItem = UIBarButtonItem(customView: view)
        self.navigationItem.rightBarButtonItem = barButtonItem*/
        
        //self.arsamiBul!.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "FONTNAME", size: 20)!], forState: .Normal)
        self.arsamiBul.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "HelveticaNeue", size: 12)!], for: .normal)
        
        imageViewHepsi.transform = imageViewHepsi.transform.rotated(by: .pi / 2)    // 90˚
        
        viewSagImageView.transform = viewSagImageView.transform.rotated(by: .pi / 2)    // 90˚
        
        viewSag.layer.cornerRadius = 20
        
        viewHepsi.layer.cornerRadius = 8
        viewFiltre.layer.cornerRadius = 8
        viewSiralama.layer.cornerRadius = 8
        viewGörünüm.layer.cornerRadius = 8
        
        viewSiralamaDropButton.layer.cornerRadius = 8
        viewGorunumDropButton.layer.cornerRadius = 8
    }
    
    @IBAction func sagButtonAction(_ sender: UITapGestureRecognizer) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PushSayfasiViewController") as? PushSayfasiViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func ustMenuButtonAction(_ sender: UITapGestureRecognizer) {
        
        if (sender.view!.tag == 0)
        {
            // create the alert
            let alert = UIAlertController(title: "", message: "Hepsi", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if (sender.view!.tag == 1)
        {
            // create the alert
            let alert = UIAlertController(title: "", message: "Filtrele", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if (sender.view!.tag == 2)
        {
            // create the alert
            let alert = UIAlertController(title: "", message: "Sıralama", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if (sender.view!.tag == 3)
        {
            // create the alert
            let alert = UIAlertController(title: "", message: "Görünüm", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {
        mapView.setCenter((mapView.userLocation?.coordinate)!, zoomLevel: 5, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
