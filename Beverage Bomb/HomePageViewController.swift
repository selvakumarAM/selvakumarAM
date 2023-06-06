//
//  HomePageViewController.swift
//  Beverage Bomb
//
//  Created by Byot on 28/12/22.
//

import UIKit

class HomePageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,collectionviewclicked,collectionviewclick{

    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var myTableview: UITableView!
    var names = ["fruitImage1","fruitImage2","fruitImage3","fruitImage4","fruitImage5","fruitImage6"]
    var name1 = ["fruitImage11","fruitImage12","fruitImage13","fruitImage14","fruitImage15","fruitImage16"]
    var sender = [String:Any]()
    var sender1 = [String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.myTableview.delegate = self
        self.myTableview.dataSource = self
        
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return 1
        }
        else if section == 1{
            return 1
        }
        else if section == 2{
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "my1TableViewCell", for: indexPath) as! my1TableViewCell
    
            return cell
            
        } else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "my2TableViewCell", for: indexPath) as! my2TableViewCell
            
            cell.delegate = self
            
            return cell
            
        } else  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "my3TableViewCell", for: indexPath) as! my3TableViewCell
            cell.delegate = self
       
            return cell
        }
        
        
      
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 300
            
            
        } else if indexPath.section == 1{
            return 300
        }
        return 300
    }
    @IBAction func seeAllBtn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "seeAllProductViewController") as? seeAllProductViewController
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    func cellclicked(myindex: Int) {
        print(myindex)
            let pushVC = storyboard?.instantiateViewController(withIdentifier: "productDetailsViewController") as! productDetailsViewController
        
            self.sender = ["names":"\(self.names[myindex])"]
            pushVC.receiver = self.sender
            self.navigationController?.pushViewController(pushVC, animated: true)
    }
    func cellclick(myindex: Int) {
        print(myindex)
            let pushVC = storyboard?.instantiateViewController(withIdentifier: "productDetailsViewController") as! productDetailsViewController
        
            self.sender1 = ["name1":"\(self.name1[myindex])"]
            pushVC.receiver1 = self.sender1
            self.navigationController?.pushViewController(pushVC, animated: true)
    }
}
   

    


