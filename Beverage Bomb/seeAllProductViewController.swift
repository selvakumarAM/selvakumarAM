//
//  seeAllProductViewController.swift
//  Beverage Bomb
//
//  Created by Byot on 05/01/23.
//

import UIKit

class seeAllProductViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    let img = ["fruitImage1", "fruitImage2","fruitImage3","fruitImage4","fruitImage5","fruitImage6"]
    let name = ["Pomegranate juice","Fruitmixture","strawberry juice","strawberry shake","cocktail","Lime"]

    
    @IBOutlet weak var seeAllTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.seeAllTableview.delegate = self
        self.seeAllTableview.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.img.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "seeAllTableViewCell", for: indexPath) as! seeAllTableViewCell
        cell.seeAllimageview.image = UIImage.init(named: "\(self.img[indexPath.row])")
        cell.seeAlllabel.text = "\(self.name[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
        
    }
}
