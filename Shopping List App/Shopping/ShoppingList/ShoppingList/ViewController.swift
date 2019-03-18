//
//  ViewController.swift
//  ShoppingList
//
//  Created by Jordan Gary on 2/18/19.
//  Copyright © 2019 Jordan Gary. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    var itemArray:[String] = []
    
    @IBAction func
        addButtonPressed(_ sender: UIButton) {
        if (descriptionInput.text!.isEmpty) {
            if(itemArray.isEmpty) {
                itemOutput.text = "No item"
                descriptionInput.placeholder = "Enter Item Name"
                descriptionInput.layer.borderWidth = 1.0
                descriptionInput.layer.borderColor = UIColor.red.cgColor
                let title = "Description Empty"
                
                let message = "Please Enter Description"
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                present(alertController, animated: true, completion: nil)
            }
            else {
                descriptionInput.placeholder = "Enter Item Name"
                descriptionInput.layer.borderWidth = 1.0
                descriptionInput.layer.borderColor = UIColor.red.cgColor
                let title = "Description Empty"
                
                let message = "Please Enter Description"
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                present(alertController, animated: true, completion: nil)
            }
        }
        else if(quantityInput.text!.isEmpty) {
            if(itemArray.isEmpty) {
                itemOutput.text = "No item"
                quantityInput.placeholder = "Enter Quantity"
                quantityInput.layer.borderWidth = 1.0
                quantityInput.layer.borderColor = UIColor.red.cgColor
                let title = "Quantity Empty"
                
                let message = "Please Enter Quantity"
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                present(alertController, animated: true, completion: nil)
            }
            else {
                quantityInput.placeholder = "Enter Quantity"
                quantityInput.layer.borderWidth = 1.0
                quantityInput.layer.borderColor = UIColor.red.cgColor
                let title = "Quantity Empty"
                
                let message = "Please Enter Quantity"
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                present(alertController, animated: true, completion: nil)
            }
        }
        else {
            itemOutput.text = "\(quantityInput.text! + "x " + descriptionInput.text!)"
            itemArray.append(itemOutput.text!)
            itemOutput.text = itemArray.joined(separator: "\n")

            descriptionInput.text = ""
            quantityInput.text = ""
        }
    }
    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    
    @IBAction func listButtonPressed(_ sender: UIButton) {
        itemArray = []
        itemOutput.text = "No item"
    }
    
    @IBAction func itemButtonPressed(_ sender: UIButton) {
        descriptionInput.text = ""
        quantityInput.text = ""
    }
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    @IBOutlet weak var quantityInput: UITextField!
    
    @IBOutlet weak var itemOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        quantityInput.keyboardType = UIKeyboardType.numberPad
        
        self.view.addGestureRecognizer(UITapGestureRecognizer (target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

