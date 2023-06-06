//
//  SignupViewController.swift
//  Beverage Bomb
//
//  Created by Byot on 23/12/22.
//

import UIKit

class SignupViewController: UIViewController {

    let bottomLine3 = CALayer()
    let bottomLine4 = CALayer()
    let bottomLine5 = CALayer()
    
    @IBOutlet weak var UsernameTxtField: UITextField!
    @IBOutlet weak var Email1TextField: UITextField!
    
    @IBOutlet weak var Password1TxtFileld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bottomLine3.frame = CGRect(x: 0.0, y: 40-1, width: 350 , height: 1.5)
        self.bottomLine3.backgroundColor = UIColor.white.cgColor
        self.UsernameTxtField.textColor = UIColor.white
        self.UsernameTxtField.borderStyle = UITextField.BorderStyle.none
        self.UsernameTxtField.layer.addSublayer(bottomLine3)
        self.UsernameTxtField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightText])
        self.UsernameTxtField.leftView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: 10))
        self.UsernameTxtField.leftViewMode = .always
        
        self.bottomLine5.frame = CGRect(x: 0.0, y: 40-1, width: 350 , height: 1.5)
        self.bottomLine5.backgroundColor = UIColor.white.cgColor
        self.Email1TextField.textColor = UIColor.white
        self.Email1TextField.borderStyle = UITextField.BorderStyle.none
        self.Email1TextField.layer.addSublayer(bottomLine5)
        self.Email1TextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightText])
        self.Email1TextField.leftView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: 10))
        self.Email1TextField.leftViewMode = .always
        
        self.bottomLine4.frame = CGRect(x: 0.0, y: 40-1, width: 350 , height: 1.5)
        self.bottomLine4.backgroundColor = UIColor.white.cgColor
        self.Password1TxtFileld.textColor = UIColor.white
        self.Password1TxtFileld.borderStyle = UITextField.BorderStyle.none
        self.Password1TxtFileld.layer.addSublayer(bottomLine4)
        self.Password1TxtFileld.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightText])
        self.Password1TxtFileld.leftView = UIView(frame: CGRect (x: 0, y: 0, width: 10, height: 10))
        self.Password1TxtFileld.leftViewMode = .always
        
       
       
    }
    
    @IBAction func SignUpageBtn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "OTPViewControler") as? OTPViewControler
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    @IBAction func TermBtn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "OTPViewControler") as? OTPViewControler
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    

}
