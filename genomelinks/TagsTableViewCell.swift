//
//  TagsTableViewCell.swift
//  genomelinks
//
//  Created by Jason Long on 2018-08-13.
//  Copyright © 2018 Ahmed Mousa. All rights reserved.
//

import UIKit

class TagsTableViewCell: UITableViewCell {
    
    var tagNames = ["DEPRESSION", "EXTRAVERSION", "INTELLIGENCE", "OPENNESS"]

    @IBOutlet weak var collectionView: UICollectionView!
    
    func setCell() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
    }
}

extension TagsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagsCell", for: indexPath) as! TagsViewCell
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 10.0
        
        cell.label.text = tagNames[indexPath.row]
//        cell.image.image = UIImage(named:"goose")!
        
        return cell
    }
}
