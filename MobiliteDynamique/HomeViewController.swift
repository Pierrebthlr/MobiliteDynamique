//
//  HomeViewController.swift
//  MobiliteDynamique
//
//  Created by Pierre Bathellier on 18/10/2017.
//  Copyright © 2017 Pierre Bathellier. All rights reserved.
//

import UIKit
import CoreLocation

class HomeViewController: UIViewController {
    @IBOutlet weak var viewLeft: UIView!
    @IBOutlet weak var smiley: UIImageView!
    @IBOutlet weak var viewRight: UIView!
    @IBOutlet weak var dataSwitch: UISwitch!
    @IBOutlet weak var dataLabel: UILabel!
    let blueColor = UIColor.color(fromHexString: "#87E9C9")
    let redColor =  UIColor.color(fromHexString: "#E9866E")

    
    
    public let locationManager = LocationManager.shared
    public var locationList: [CLLocation] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        drawShadow(view: viewLeft)
        drawShadow(view: viewRight)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawShadow(view: UIView)
    {
        view.layer.masksToBounds = false
        view.layer.shadowOffset = CGSize(width:-0.5, height:0.5)
        view.layer.shadowRadius = 2
        view.layer.shadowOpacity = 0.5
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func changeLabelData() {
        
        if dataSwitch.isOn {
            dataLabel.text = "START"
            dataLabel.textColor = blueColor
            smiley.image = UIImage(named: "smiley_good.png")
            //startCollectLocation()
            
        }
        else {
            dataLabel.text = "STOP"
            dataLabel.textColor = redColor
            smiley.image = UIImage(named: "smiley_sad.png")

            //stopCollectLocation()
        }
        
    }

}
