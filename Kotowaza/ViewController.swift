//
//  ViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/21.
//

import UIKit

class ViewController: UIViewController,
UICollectionViewDelegate,
                      UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

            //セル上のTag(1)とつけたUILabelを生成
            let label = cell.contentView.viewWithTag(1) as! UILabel

            //今回は簡易的にセルの番号をラベルのテキストに反映させる
            label.text = String(indexPath.row + 1)

            return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

