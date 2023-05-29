//
//  AnimalViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/29.
//

import UIKit

class AnimalViewController: UIViewController,
      UITableViewDelegate,
                            UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        //セル上のTag(1)とつけたUILabelを生成
        let label = cell.contentView.viewWithTag(1) as! UILabel

        //今回は簡易的にセルの番号をラベルのテキストに反映させる
        label.text = String(indexPath.row + 1)

        return cell
    }
    
    
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
        
            //セルのサイズを指定する処理
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

                // 横方向のスペース調整
                let horizontalSpace:CGFloat = 4

                //セルのサイズを指定。画面上にセルを4つ表示させたいのであれば、デバイスの横幅を4分割した横幅　- セル間のスペース*3（セル間のスペースが3つあるため）
                let cellSize:CGFloat = self.view.bounds.width/4 - horizontalSpace*3

                // 正方形で返すためにwidth,heightを同じにする
                return CGSize(width: cellSize, height: cellSize)
            }
            //セル選択時の処理
            func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

                //指定の遷移先に遷移する（最低限の処理）
                performSegue(withIdentifier: "指定のIdentifier", sender: nil)
            }
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
