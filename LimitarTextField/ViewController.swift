//
//  ViewController.swift
//  LimitarTextField
//
//  Created by Gil Rodarte on 02/12/17.
//  Copyright © 2017 Gil Rodarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var limitarTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        limitarTextField.delegate = self
    }
    
    // Esta funcion es la que limita el numero de caracteres del String.
    func textField(_ limitarTextField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = limitarTextField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        return updatedText.count <= 10 // Esto es el limite, puedes cambiarlo dependiendo de tus necesidades.
    }
}

