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
        
        guard let day = dateTextField.text, let month = monthTextField.text, let year = earTextField.text else
        { return }
    
        let calender = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calender.date(from: dateComponents) else { return }
   
        let weekday = dateFormatter.string(from: date)
        
        resultLable.text = weekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

