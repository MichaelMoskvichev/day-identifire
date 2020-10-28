//
//  ViewController.swift
//  SwiftBookThirdApp
//
//  Created by Миша Москвичев on 28.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var earTextField: UITextField!

    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
    
        let calender = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTextField.text!)
        dateComponents.month = Int(monthTextField.text!)
        dateComponents.year = Int(earTextField.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let date = calender.date(from: dateComponents)
   
        let weekday = dateFormatter.string(from: date!)
        
        resultLable.text = weekday
    }
    
    
}

