//
//  ViewController.swift
//  NavigationExample
//
//  Created by Lisa Serbin on 2016-10-10.
//  Copyright © 2016 Stefan Wapnick. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedMessage : String?
    var delegate : SecondViewControllerDelegate?
    
    @IBOutlet var returnMessageTextField : UITextField!
    @IBOutlet var receivedMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let message = receivedMessage{
            receivedMessageLabel.text = "Got message \(message)"
        }
    }
    
    @IBAction func onSendMessageBack(sender: AnyObject){
        navigationController?.popViewController(animated: true)
        self.delegate?.onDataReturned(self.returnMessageTextField.text!)
    }
}

protocol SecondViewControllerDelegate {
    func onDataReturned(_ returnMessage: String)
}

