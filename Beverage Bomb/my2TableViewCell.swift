//
//  my2TableViewCell.swift
//  Beverage Bomb
//
//  Created by Byot on 29/12/22.
//

import UIKit

class my2TableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var my2Collectionview: UICollectionView!
  
    var delegate : collectionviewclicked?
    
    let img = ["fruitImage1", "fruitImage2","fruitImage3","fruitImage4","fruitImage5","fruitImage6"]
    let name2 = ["Pomegranate juice","Fruitmixture","strawberry juice","strawberry shake","cocktail","Lime"]
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.my2Collectionview.delegate = self
        self.my2Collectionview.dataSource = self
        
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "my2CollectionViewCell", for: indexPath) as! my2CollectionViewCell
        cell.myImageview2.image = UIImage(named: "\(self.img[indexPath.item])")
        cell.myImageview2.layer.cornerRadius = cell.myImageview2.frame.height / 6
        cell.imgNameLbl.text = "\(self.name2[indexPath.item])"
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.cellclicked(myindex: indexPath.item)
    }
    
}
