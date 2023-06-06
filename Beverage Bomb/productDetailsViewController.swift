//
//  productDetailsViewController.swift
//  Beverage Bomb
//
//  Created by Byot on 05/01/23.
//

import UIKit

class productDetailsViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    var receiver = [String:Any]()
    var receiver1 = [String:Any]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imgView.image = UIImage.init(named: "\(self.receiver ["names"]!)")
        
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
