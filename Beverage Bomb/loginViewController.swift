//
//  loginViewController.swift
//  Beverage Bomb
//
//  Created by Byot on 21/12/22.
//

import UIKit

class loginViewController: UIViewController, UITextFieldDelegate {

    var bottomLine1 = CALayer()
    var bottomLine2 = CALayer()
    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var LoginBtnLoginpage: UIButton!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.LoginBtnLoginpage.layer.cornerRadius = 10
        
        self.bottomLine1.frame = CGRect(x: 0.0, y: 40-1, width: 350 , height: 1.5)
        self.bottomLine1.backgroundColor = UIColor.white.cgColor
        self.emailTxtField.textColor = UIColor.white
        self.emailTxtField.borderStyle = UITextField.BorderStyle.none
        self.emailTxtField.layer.addSublayer(bottomLine1)
        self.emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightText])
        self.emailTxtField.leftView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: 10))
        self.emailTxtField.leftViewMode = .always
        
        self.bottomLine2.frame = CGRect(x: 0.0, y: 40-1, width: 350 , height: 1.5)
        self.bottomLine2.backgroundColor = UIColor.white.cgColor
        self.passwordTxtField.textColor = UIColor.white
        self.passwordTxtField.borderStyle = UITextField.BorderStyle.none
        self.passwordTxtField.layer.addSublayer(bottomLine2)
        self.passwordTxtField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightText])
        self.passwordTxtField.isSecureTextEntry = true
        self.passwordTxtField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        self.passwordTxtField.leftViewMode = .always
    
            
        self.emailTxtField.delegate = self
        self.passwordTxtField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.emailTxtField{
            self.passwordTxtField.becomeFirstResponder()
        }
        else if textField == self.passwordTxtField{
            self.passwordTxtField.resignFirstResponder()
        }
        return true
    }
    @IBAction func LginBtnLoginpage(_ sender: Any) {
        
        if self.emailTxtField.text!.count < 10{
            self.alert(Message: "Enter the Correct Email")
        }else
        if self.passwordTxtField.text!.count > 10{
            self.alert(Message: "Enter the Correct Password")
            
        }
    }
    func alert(Message : String){
        let alert = UIAlertController(title: "Alert", message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func Login1Btn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "HomePageViewController") as? HomePageViewController
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
}


