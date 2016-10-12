//
//  ViewController.swift
//  NavigationExample
//
//  Created by Lisa Serbin on 2016-10-10.
//  Copyright © 2016 Stefan Wapnick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {

    @IBOutlet var messageTextField : UITextField!
    @IBOutlet var receivedMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSendMessage(sender: AnyObject){
        performSegue(withIdentifier: "SegueToSecondScreen", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondViewControler = segue.destination as? SecondViewController{
            secondViewControler.receivedMessage = messageTextField.text!
            secondViewControler.delegate = self
        }
    }
    
    func onDataReturned(_ returnMessage: String){
        receivedMessageLabel.text = "Got message back \(returnMessage)"
    }
}

