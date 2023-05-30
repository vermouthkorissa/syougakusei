//
//  AnimalViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/29.
//

import UIKit

class AnimalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var Label:UILabel!
    
    
    
    // UICollectionViewのデータソースメソッド
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let label = cell.contentView.viewWithTag(1) as! UILabel
        label.text = "うま"
        label.text = "いぬ"
        label.text = "さる"
        label.text = "おに"
        label.text = "ねこ"
        label.text = "狐"
        label.text = "むし"
        label.text = "蛙"
        label.text = "その他"
        label.text = "魚"
        label.text = "とら"
        label.text = "狸"
        label.text = "へび"
        label.text = "はち"
        label.text = "とり"
        label.text = "仏"
        
        
        
        
        return cell
    }
    
    // UICollectionViewのレイアウトメソッド
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace: CGFloat = 4
        let cellSize: CGFloat = self.view.bounds.width / 4 - horizontalSpace * 3
        return CGSize(width: cellSize, height: cellSize)
    }
    
    // UICollectionViewの選択メソッド
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "指定のIdentifier", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


