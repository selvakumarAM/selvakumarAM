//
//  my2CollectionViewCell.swift
//  Beverage Bomb
//
//  Created by Byot on 29/12/22.
//

import UIKit

protocol collectionviewclicked{
    func cellclicked(myindex:Int)
    }
class my2CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myImageview2: UIImageView!
    @IBOutlet weak var imgNameLbl: UILabel!
    
}
