//
//  ViewController.swift
//  CountryPickerExample
//
//  Created by MacStudent on 2018-08-07.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var pickerCountry: UIPickerView!
    
    
    var countryNameList:[String]=[String]()
   // var studentNameList:[String]=[String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        pickerCountry.dataSource = self
        pickerCountry.delegate = self
        
        
        countryNameList = ["India","Canada","USA","UK","Pakistan","France","Sri Lanka","Mexico","Bhutan","China","Singapor","South Africa"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryNameList.count
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryNameList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblCountryName.text = countryNameList[row]
        
        print(countryNameList[ pickerCountry.selectedRow(inComponent: 0)])
    }
}

