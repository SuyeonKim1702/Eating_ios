//
//  MapViewController.swift
//  Eating
//
//  Created by 코드잉 on 2021/03/07.
//

import UIKit

class MapViewController: UIViewController, MTMapViewDelegate {
    
    var mapView: MTMapView?
    @IBOutlet var completeButtonPlaceHolderView: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        setForMapView()
        stylingCompleteButton()
    }
    
    private func setForMapView() {
        mapView = MTMapView(frame: view.bounds)
        if let mapView = mapView {
            mapView.delegate = self
            mapView.baseMapType = .standard
            view.addSubview(mapView)

        }
    }
    
    private func stylingCompleteButton() {
        let button = UIButton()
        button.backgroundColor = UIColor(rgb: 0xfddc21)
        mapView?.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 63).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        button.layer.cornerRadius = 32
        button.setTitle("선택한 위치로 설정", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "JalnanOTF", size: 20)
        button.layer.shadowRadius = 5
        button.layer.shadowColor = UIColor(rgb: 0x000000, alpha: 29).cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 3)
        button.layer.shadowOpacity = 0.29
        
        
        
    }


}
