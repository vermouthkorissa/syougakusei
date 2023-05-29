//
//  AnimalViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/29.
//

import UIKit

class AnimalViewController: UIViewController
      UICollectionViewDelegate
      UICollectionViewDataSource{
    
    //セクションの中のセルの数を返す
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        //今回はとりあえず12とする。（配列に表示させたいデータを入れている場合は配列のデータ数を返せば良い。）
        return 16
        
        //セルに表示する内容を記載する
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            //storyboard上のセルを生成　storyboardのIdentifierで付けたものをここで設定する
            let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

            //セル上のTag(1)とつけたUILabelを生成
            let label = cell.contentView.viewWithTag(1) as! UILabel

            //今回は簡易的にセルの番号をラベルのテキストに反映させる
            label.text = String(indexPath.row + 1)

            return cell
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
