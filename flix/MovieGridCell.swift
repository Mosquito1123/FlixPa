//
//  MovieGridCell.swift
//  flix
//
//  Created by Carlos Estrada on 9/22/19.
//  Copyright © 2019 Carlos Estrada. All rights reserved.
//

import UIKit

class MovieGridCell: UICollectionViewCell {
    
    @IBOutlet weak var posterView: UIImageView!
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        
        return layoutAttributes
    }
}
