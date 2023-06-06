//
//  my3TableViewCell.swift
//  Beverage Bomb
//
//  Created by Byot on 10/01/23.
//

import UIKit

class my3TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var my3Collectionview: UICollectionView!
    
    var delegate : collectionviewclick?
    
    let img = ["fruitImage11", "fruitImage12","fruitImage13","fruitImage14","fruitImage15","fruitImage16"]
    let name3 = ["lemon juice","Mango shake","Pineapple juice","LIme juice","Orange juice ","Nanari juice"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.my3Collectionview.delegate = self
        self.my3Collectionview.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.img.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "my3CollectionViewCell", for: indexPath) as! my3CollectionViewCell
        cell.myImageview3.image = UIImage(named: "\(self.img[indexPath.item])")
        cell.myImageview3.layer.cornerRadius = cell.myImageview3.frame.height / 6
        cell.imgNameLbl.text = "\(self.name3[indexPath.item])"
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        delegate?.cellclicked(myindex: indexPath.item)
//    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.cellclick(myindex: indexPath.item)
    }
}
