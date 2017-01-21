//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Shrawan Shinde on 21/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create a DatePicker
        let datePickerView: UIDatePicker = UIDatePicker()
        
        // Posiiton date picket within a view
        datePickerView.frame = CGRect(x: 10, y: 50, width: self.view.frame.width, height: 200)
        
        // Set some of UIDatePicker properties
        datePickerView.timeZone = NSTimeZone.local
        datePickerView.backgroundColor = UIColor.white
        
        // Add an event to call onDidChangeDate function when value is changed.
        datePickerView.addTarget(self, action: #selector(ViewController.onDidChangeDate(_:)), for: .valueChanged)
        
        // Add DataPicker to the view
        self.view.addSubview(datePickerView)
    }
    
    
    func onDidChangeDate(_ sender: UIDatePicker){
        
        // Create date formatter
        let dateFormatter: DateFormatter = DateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a"
        
        // Apply date format
        let selectedDate: String = dateFormatter.string(from: sender.date)
        
        print("Selected date  : \(selectedDate)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

