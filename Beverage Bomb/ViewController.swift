//
//  ViewController.swift
//  Beverage Bomb
//
//  Created by Byot on 19/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var Mycollectionview: UICollectionView!
    
    @IBOutlet weak var Mypagecontrolview: UIPageControl!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBOutlet weak var signupBtn: UIButton!
    
    var name1 = ["frontPageImage1","frontPageImage2","frontPageImage3"]
    var timer = Timer()
    var counter = 0
    var sender = [String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.Mypagecontrolview.numberOfPages = name1.count
        self.Mypagecontrolview.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.nextpage), userInfo: nil, repeats: true)
        }
        self.Mycollectionview.layer.masksToBounds = true
        self.Mycollectionview.layer.cornerRadius = 10
        
        self.Mycollectionview.delegate = self
        self.Mycollectionview.dataSource = self
        
        self.loginBtn.layer.cornerRadius = 10
        self.signupBtn.layer.cornerRadius = 10
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.name1.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath)as! myCollectionViewCell
        cell.myImageview.image = UIImage(named: "\(self.name1[indexPath.item])")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    @objc func nextpage(){
        if counter < name1.count{
            let index = IndexPath.init(item: counter, section: 0)
            self.Mycollectionview.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            Mypagecontrolview.currentPage = counter
            counter += 1
        }
        else  {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.Mycollectionview.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            Mypagecontrolview.currentPage = counter
            counter = 1
        }
    }
    @IBAction func Loginbtn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as? loginViewController
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    @IBAction func SignupBtn(_ sender: Any) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
}


