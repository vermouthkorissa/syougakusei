//
//  ListTableViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/30.
//

import UIKit

class ListTableViewController: UITableViewController {
    var data: [String] = []
    
    init(data: [String]) {
            super.init(style: .plain)
            self.data = data
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
   
    



    
    let dataArray = [
        ListTableViewController(data: ["馬子にも衣装", "馬の耳に念仏", "竹馬の友"]),
            ListTableViewController(data: ["飼い犬に手を噛まれる", "犬が西向きゃ尾は東", "犬も歩けば棒に当たる"]),
        ListTableViewController(data: ["さるも木から落ちる", "犬猿の仲"]),
            ListTableViewController(data: ["鬼の目にも涙", "渡る世間に鬼はない", "鬼に金棒"]),
        ListTableViewController(data: ["猫に小判", "猫の手もかりたい"]),
            ListTableViewController(data: ["きつねの嫁入り", "とらの威を借るきつね"]),
        ListTableViewController(data: ["一寸の虫にも五分のたましい", "たで食う虫も好き好き", "とんで火に入る夏の虫"]),
            ListTableViewController(data: ["井の中の蛙、大海を知らず", "かえるの子はかえる", "かえるの面に水"]),
        ListTableViewController(data: ["えびでたいをつる", "柳の下のどじょう", "亀の甲より年の功"]),
            ListTableViewController(data: ["魚心あれば水心", "にがした魚は大きい", "水清ければ魚棲まず"]),
        ListTableViewController(data: ["虎の尾をふむ", "虎穴にいらずんば虎子を得ず"]),
            ListTableViewController(data: ["たぬき寝入り", "とらぬたぬきの皮算用"]),
        ListTableViewController(data: ["蛇足", "やぶをつついてへびをだす"]),
            ListTableViewController(data: ["泣きつらにはち", "あぶはちとらず"]),
        ListTableViewController(data: ["すずめ百までおどりわすれず", "とんびがたかをうむ", "能ある鷹は爪を隠す"]),
            ListTableViewController(data: ["仏の顔も三度まで", "地獄で仏に会ったよう", "釈迦に説法"]),
        
    
    ]
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let selectedViewController = dataArray[indexPath.item]
            navigationController?.pushViewController(selectedViewController, animated: true)
        }
    


        override func viewDidLoad() {
            super.viewDidLoad()

            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell") // セルの登録
        }

        // MARK: - Table view data source

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count // データ配列の要素数を返す
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = data[indexPath.row] // セルのテキストにデータ配列の要素を表示
            return cell
        }

    }


   

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem


    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


