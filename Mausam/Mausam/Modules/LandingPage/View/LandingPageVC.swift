//
//  LandingPageVC.swift
//  Mausam
//
//  Created by Shahinali Agharia on 05/09/21.
//

import UIKit

class LandingPageVC: UIViewController {

    @IBOutlet weak var cityNameLbl: UILabel!
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var temperatureLbl: UILabel!
    @IBOutlet weak var weatherTypeLbl: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addGradientColorToBGView()
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=mumbai&appid=7f6fa74b558e3bc8616a4ed778b1a5ef")!
        APIManager.sharedInstance.getData(url: url) { (data, error) in
            
        }
    }
    
    //MARK: - Add Gradient To Background View
    private func addGradientColorToBGView() {
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [UIColor.init(hexString: Colors.gradient2).cgColor, UIColor.init(hexString: Colors.gradient1).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
//        background-color: #485461;
//        background-image: linear-gradient(315deg, #485461 0%, #28313b 74%);
    }

}
