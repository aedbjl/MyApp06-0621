//
//  ViewController.swift
//  MyApp06 0621
//
//  Created by iii-user on 2017/6/21.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var svalue: UISwitch!
    
    @IBOutlet weak var stepValue: UIStepper!
    
    @IBOutlet weak var mybtn : UIButton!
    
    private var isOn:Bool?
    
    @IBAction func switchStatus(_ sender: Any) {
        print(svalue.isOn)
    }
    @IBAction func changeVlaue(_ sender: Any) {
        print(stepValue.value)
    }
    
    @IBAction func clickButton(_ sender: Any) {
        mybtn.isSelected = !mybtn.isSelected
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepValue.maximumValue = 10
        stepValue.minimumValue = 0
        stepValue.value = 5
        mybtn.setImage(UIImage(named:"switchon"), for :UIControlState.normal)
        mybtn.setImage(UIImage(named:"switch off"), for :UIControlState.selected)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

