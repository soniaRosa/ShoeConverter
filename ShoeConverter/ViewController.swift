//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Joao Rosa on 27/02/15.
//  Copyright (c) 2015 Sonia Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     // MARK: - IBoutlet
    @IBOutlet weak var womenLabel: UILabel!
    @IBOutlet weak var menLabel: UILabel!
    
    @IBOutlet weak var womenTextField: UITextField!
    @IBOutlet weak var menTextField: UITextField!
    
     // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - IBAction
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        converterMenShoe()
        converterWomenShoe()
    }
    
    
    // MARK: - Helper Function
    func converterWomenShoe () {
        
        let numberFromTextField = (Double((womenTextField.text as NSString).doubleValue))
        let kconvertNumber = 30.5
        self.womenLabel.hidden = false
        self.womenLabel.text = toString(numberFromTextField +  kconvertNumber) + " In European Size"
        self.womenTextField.text = ""
        self.womenTextField.resignFirstResponder()
    }
    
    func converterMenShoe () {
        
        let kConvertNumber = 30
        menLabel.hidden = false
        
        if let texFromTextField = menTextField.text.toInt() {
            menLabel.text = "\(texFromTextField + kConvertNumber)" + " In European Size"
            menTextField.text = ""
        }
        else {
            
            menLabel.hidden = true
        }
        menTextField.resignFirstResponder()
    }
    
    // MARK: - Touch
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
}




