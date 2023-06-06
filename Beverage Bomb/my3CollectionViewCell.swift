//
//  my3CollectionViewCell.swift
//  Beverage Bomb
//
//  Created by Byot on 10/01/23.
//

import UIKit

protocol collectionviewclick{
    func cellclick(myindex:Int)
    }

class my3CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myImageview3: UIImageView!
    
    @IBOutlet weak var imgNameLbl: UILabel!
}
