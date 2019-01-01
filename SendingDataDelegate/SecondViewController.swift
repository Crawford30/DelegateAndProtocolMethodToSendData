//
//  SecondViewController.swift
//  SendingDataDelegate
//
//  Created by JOEL CRAWFORD on 01/01/2019.
//  Copyright © 2019 RTS. All rights reserved.
//

import UIKit
//=============Protocol with the function to send data=======
protocol MyDataSendingDelegateProtocol {
    func sendDataToViewController(myData: String)
}


class SecondViewController: UIViewController {

    //===========SETTING THE DELEGATE VARRIABLE FROM THE PROTOCOL======
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    @IBOutlet weak var dataToSendTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //=============btton clicked to send data=========
    @IBAction func sendDataButtonClicked(_ sender: Any) {
        //===BEFORE SENDING DATA====
        /*====== FIRST: check if the delegate is not nil, then it means its not authourised to send data=====*/
        /*====SECOND, check if there is some data entered in  the text field, if there is no data, it doesnt make sense to perform an action of sending data=====*/
        
        if self.delegate != nil && self.dataToSendTextField.text != nil {
            let dataToBeSent = self.dataToSendTextField.text
            self.delegate?.sendDataToViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
