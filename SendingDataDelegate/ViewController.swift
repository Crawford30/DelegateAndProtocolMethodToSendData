//
//  ViewController.swift
//  SendingDataDelegate
//
//  Created by JOEL CRAWFORD on 01/01/2019.
//  Copyright © 2019 RTS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet weak var recieveData: UITextField!
    @IBOutlet weak var receiveDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //===========Delegate method====
    func sendDataToViewController(myData: String) {
        self.receiveDataLabel.text = myData
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "getDataSegue" {
        let secondVC: SecondViewController = segue.destination as! SecondViewController
        secondVC.delegate = self as? MyDataSendingDelegateProtocol
    }
    }
}

