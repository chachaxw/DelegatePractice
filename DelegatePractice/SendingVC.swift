//
//  SendingVC.swift
//  DelegatePractice
//
//  Created by Wei Zhou on 18/12/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

protocol DataSendDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!

    var delegate: DataSendDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendBtnWasPressed(_ sender: AnyObject) {
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
        
    }
}
