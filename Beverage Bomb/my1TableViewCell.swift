//
//  my1TableViewCell.swift
//  Beverage Bomb
//
//  Created by Byot on 29/12/22.
//

import UIKit

class my1TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var my1Collectionview: UICollectionView!
    @IBOutlet weak var myPagecontroler: UIPageControl!
    
    
    var img = ["fruitImageslide1", "fruitImageslide2", "fruitImageslide3", "fruitImageslide4", "fruitImageslide5"]
    var timer = Timer()
    var counter = 0
    var sender = [String : Any]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.my1Collectionview.delegate = self
        self.my1Collectionview.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        self.my1Collectionview.layer.masksToBounds = true
        self.my1Collectionview.layer.cornerRadius = 10
        
        myPagecontroler.numberOfPages = img.count
        myPagecontroler.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector( self.nextpage), userInfo: nil, repeats: true)
        }
       
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.img.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "my1CollectionViewCell", for: indexPath) as! my1CollectionViewCell
        cell.myImageview.image = UIImage(named: "\(self.img[indexPath.item])")
        
        cell.myImageview.layer.cornerRadius = cell.myImageview.frame.height / 6
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:collectionView.frame.width , height: collectionView.frame.height)
    }
    
    @objc func nextpage() {
        if counter < img.count{
            let index = IndexPath.init(item: counter, section: 0)
            self.my1Collectionview.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            myPagecontroler.currentPage = counter
            counter += 1
            
        }
        else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.my1Collectionview.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            myPagecontroler.currentPage = counter
            counter = 1
        }
      
        
        }
    
     
    }
    

