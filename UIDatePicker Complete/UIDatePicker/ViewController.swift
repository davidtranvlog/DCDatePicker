//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker = UIDatePicker()
        datePicker.center = view.center
        view.addSubview(datePicker)
        
        datePicker.addTarget(self, action: "datePickerChanged:", forControlEvents: UIControlEvents.ValueChanged)
    }
    
    // MARK: - Target Action
    
    func datePickerChanged(sender: UIDatePicker)
    {
        println("Selected date is: \(sender.date)")
    }
    
    @IBAction func changeDatePickerMinMaxDate(sender: AnyObject)
    {
        datePicker.datePickerMode = UIDatePickerMode.Date
        
        let oneYear: NSTimeInterval = 365 * 24 * 60 * 60
        let today = NSDate()
        
        let oneYearFromToday = today.dateByAddingTimeInterval(oneYear)
        let twoYearsFromToday = today.dateByAddingTimeInterval(oneYear * 2)
        
        // set the max and min
        datePicker.minimumDate = oneYearFromToday
        datePicker.maximumDate = twoYearsFromToday
    }
    
    @IBAction func changeDatePickerToDefault(sender: AnyObject)
    {
        datePicker.datePickerMode = UIDatePickerMode.DateAndTime
    }
    
    @IBAction func changeDatePickerToCountDownTimer(sender: AnyObject)
    {
        datePicker.datePickerMode = UIDatePickerMode.CountDownTimer
        
        let threeMinues = (3 * 60) as NSTimeInterval
        datePicker.countDownDuration = threeMinues
    }
    
}

















