//
//  AnimalCollectionViewCell.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/29.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    
    private var arrayNo = 0
    
    @IBOutlet weak var label: UILabel!
    
    func configure(_ text: String) {
        label.text = text
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalCollectionViewCell", for: indexPath) as? AnimalCollectionViewCell else { return UICollectionViewCell() }
        
        let index = "うま".index("うま".startIndex, offsetBy: arrayNo)
        cell.configure(String("うま"[index]))

        
            arrayNo += 1
        if arrayNo > 2 {
            arrayNo = 0
        }
            // セルに枠線をセット
            cell.layer.borderColor = UIColor.lightGray.cgColor // 外枠の色
            cell.layer.borderWidth = 1.0 // 枠線の太さ
            return cell
        }

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
