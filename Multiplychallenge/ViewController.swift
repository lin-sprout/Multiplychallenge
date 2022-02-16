//
//  ViewController.swift
//  Multiplychallenge
//
//  Created by Lin LaMonte on 2/15/22.
//  fueled by Lemon Demon: Two Trucks
//
// how to print integer in string? productLabel.text = "the product is \(productNumber)"

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var insrtText1: UITextField!
    
    @IBOutlet weak var addText2: UITextField!
    
//these r the variables for the boxes
    var initialInputBoxA = 0
    var initialInputBoxB = 0
    
    var dataCollectA: String = ""
    var dataCollectB: String = ""
    
  
    
    @IBOutlet weak var imgViewA: UIImageView!
    
    @IBOutlet weak var imgViewB: UIImageView!
    
    @IBOutlet weak var imgViewC: UIImageView!
    
    
    
    
    @IBOutlet weak var productDisplayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //imgViewA.image = UIImage(named: "lonk")
        //imgViewB.image = UIImage(named: "pikchu")
        //imgViewC.image = UIImage(named: "kat")
        
        
    }

    
    @IBAction func calculatedProduct(_ sender: Any) {
        //double ?? is an optional, it will assign the default value to the right of the ??nif user doesnt enter anything
        dataCollectA = insrtText1.text ?? ""
        
        dataCollectB = addText2.text ?? ""
        
        
    }
    
    

}

