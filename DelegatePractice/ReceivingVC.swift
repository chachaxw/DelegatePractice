//
//  ReceivingVC.swift
//  DelegatePractice
//
//  Created by Wei Zhou on 18/12/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSendDelegate {

    @IBOutlet weak var receivingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
}

