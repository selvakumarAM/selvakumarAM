//
//  OTPViewControler.swift
//  Beverage Bomb
//
//  Created by Byot on 23/12/22.
//

import UIKit

class OTPViewControler : UIViewController, UITextFieldDelegate {
    @IBOutlet weak var OTPtxtfield1: UITextField!
    
    @IBOutlet weak var OTPtxtfield2: UITextField!
    @IBOutlet weak var OTPtxtfield3: UITextField!
    @IBOutlet weak var OTPtxtfield4: UITextField!
    
    @IBOutlet weak var VerifyBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.OTPtxtfield1.delegate = self
        self.OTPtxtfield2.delegate = self
        self.OTPtxtfield3.delegate = self
        self.OTPtxtfield4.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1) && (string.count > 0){
            if textField == OTPtxtfield1{
                OTPtxtfield2.becomeFirstResponder()
            }
            if textField == OTPtxtfield2{
                OTPtxtfield3.becomeFirstResponder()
            }
            if textField == OTPtxtfield3{
                OTPtxtfield4.becomeFirstResponder()
            }
            if textField == OTPtxtfield4{
                OTPtxtfield4.becomeFirstResponder()
            }
            textField.text = string
            return false
            }
        else if ((textField.text?.count)! >= 1) && (string.count == 0){
            if textField == OTPtxtfield2{
                OTPtxtfield1.becomeFirstResponder()
            }
            if textField == OTPtxtfield3{
                OTPtxtfield2.becomeFirstResponder()
            }
            if textField == OTPtxtfield4{
                OTPtxtfield3.becomeFirstResponder()
            }
            if textField == OTPtxtfield4{
                OTPtxtfield4.resignFirstResponder()
            }
            textField.text == string
            return false
            }
        else if (textField.text?.count)! >= 1 {
            textField.text = string
            return false
        }
        return true
    }
    @IBAction func VerifyBtn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "HomePageViewController") as? HomePageViewController
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    }


