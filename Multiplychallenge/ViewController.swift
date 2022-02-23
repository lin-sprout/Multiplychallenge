//
//  ViewController.swift
//  Multiplychallenge
//
//  Created by Lin LaMonte on 2/15/22.
//  fueled by Lemon Demon: Two Trucks
//
// how to print integer in string? productLabel.text = "the product is \(productNumber)"
//resign first responder


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
        
        //for even odd need modulus, need new variable.
        
    }

    
    func textFieldDidEndEditing(_ insrtText1: UITextField) { insrtText1.resignFirstResponder()}
    
    func textFieldDidEndEditing( addText2: UITextField) { addText2.resignFirstResponder()}
    
    
            
    @IBAction func calculatedProduct(_ sender: Any) {
        imgViewB.isHidden = false
        imgViewC.isHidden = false
        imgViewA.isHidden = false
        productDisplayLabel.isHidden = false
//        insrtText1.text = ""
//        addText2.text = ""
//
        //double ?? is an optional, it will assign the default value to the right of the ?? if user doesnt enter anything
        dataCollectA = insrtText1.text ?? ""
        
        dataCollectB = addText2.text ?? ""
        
        var firstNum = Int(dataCollectA) ?? 0
        var secdNum = Int(dataCollectB) ?? 0
        var multiply = firstNum * secdNum
        productDisplayLabel.text = "The Product is \(multiply)"
        var even = multiply % 2
        //var odd = Int(multiply) ?? odd#
        
        if multiply == 64
        {
            imgViewA.image = UIImage(named: "lonk")
            imgViewB.isHidden = true
        }
        if even == 0
        {
            imgViewC.image = UIImage(named: "kat")
            imgViewB.isHidden = true
            imgViewA.isHidden = true
        }
        if multiply == 64 {
            imgViewA.isHidden = false
        }
        if even != 0
        {
            imgViewB.image = UIImage(named:"pikchu")
            imgViewA.isHidden = true
            imgViewC.isHidden = true
        }
        
        //if multiply == even{imgViewC.image = UIImage(named: "kat")}
        //if multiply == odd{ imgViewB.image = UIImage(named: "pikchu")}
        
    
    }
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        //.ishidden = true
        imgViewB.isHidden = true
        imgViewC.isHidden = true
        imgViewA.isHidden = true
        productDisplayLabel.isHidden = true
        insrtText1.text = ""
        addText2.text = ""
        
    }
    
}

