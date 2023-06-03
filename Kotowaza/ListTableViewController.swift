//
//  ListTableViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/05/30.
//

import UIKit

class ListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var data: [[String]] = []
    
    @IBOutlet var tableView: UITableView!
    
    

    
    let dataArray:[[[String]]] = [
        [["馬子にも衣装", "どんな人でも美しく着飾れば、りっぱな人間に見えるもの。"],["馬の耳に念仏", "いくら言っても効き目がない"],["竹馬の友", "とても仲がよいこと"]],
        [["飼い犬に手を噛まれる", "かわいがっていた人に裏切られる"],["犬が西向きゃ尾は東", "当たり前のこと"],["犬も歩けば棒に当たる", "思わぬ幸運に当たる、何かをしようとすると災難が降りかかる"]],
        [["さるも木から落ちる","上手い人でも時には失敗する"],["犬猿の仲","とても仲が悪いこと"]],
        [["鬼の目にも涙", "厳しい人でも哀れみの気持ちになる"],["渡る世間に鬼はない", "どこにでも親切な人はいるもの"], ["鬼に金棒","強いものにさらに強いものが加わり、無敵になること"]],
        [["猫に小判", "価値が分からないものには役に立たない"],["猫の手もかりたい", "誰でもいいから手伝ってほしいくらい、いそがしい"]],
        [["きつねの嫁入り", "日が出ているのに、雨がふること"], ["とらの威を借るきつね", "力の強い人にたよって、いばること"]],
        [["一寸の虫にも五分のたましい", "とるに足らないようなものでもそれなりの意地があるからあなどりがたい"],["たで食う虫も好き好き", "人の好みはさまざまである"],["とんで火に入る夏の虫", "自分から、きけんなところに飛び込むこと"]],
        [["井の中の蛙、大海を知らず", "自分の狭い知識にとらわれて、広い世界を知らない"],["かえるの子はかえる", "つまらない親からすぐれた子供はうまれない"], ["かえるの面に水", "どんな仕打ちをされても平気でいるようす"]],
        [["えびでたいをつる", "少しのもので大きな利益を上げる"], ["柳の下のどじょう", "たまたま一度手に入っても、同じ場所でまたそれが起こるとはかぎらない"], ["亀の甲より年の功", "長い間の経験は何よりも貴重だ"]],
        [["魚心あれば水心", "人の好きな気持ちは互いに反応するものだ"], ["にがした魚は大きい", "一度手に入れかけて失ったものは、実際よりも大きく、よく見えるものだということ。"], ["水清ければ魚棲まず", "人格があまりに潔白すぎると、他人がなじむことはむずかしいこと。"]],
        [["虎の尾をふむ", "とてもきけんなこと."], ["虎穴にいらずんば虎子を得ず", "リスクをせおわないと、ほしいものは手に入らない"]],
        [["たぬき寝入り", "ねむっているふりをすること"], [ "とらぬたぬきの皮算用", "たしかでないことを当てにして、あれこれと計画する"]],
        [["蛇足", "余分でいらないもの"], [ "やぶをつついてへびをだす", "余計なことをしたせいで、災難にあうこと"]],
        [["泣きつらにはち", "運が悪いことがかさなる"], ["あぶはちとらず", "いろいろとよくばるとすべてしっぱいする"]],
        [["すずめ百までおどりわすれず", "幼い頃に覚えたことは年を取っても忘れない"], ["とんびがたかをうむ", "ふつうの親がすぐれた子供をうむ"], ["能ある鷹は爪を隠す", "本当に能力のある人はそれをひけらかさない"]],
        [["仏の顔も三度まで", "どんなにやさしい人でも、失礼なことをくりかえせば、いつかは怒る"], ["地獄で仏に会ったよう", "くるしいときに、思いがけない助けにあったうれしさ"],["釈迦に説法", "その道にくわしい人にわざわざ、それに関して教えること"]]
    ]
    var str = 0

 
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            tableView.delegate = self
            tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "listTableViewCell")
        }


        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count // データ配列の要素数を返す
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
            
            print(indexPath.row,data[indexPath.row][0])
            
            if str == 0 {
               data = dataArray[0]
            }else if str == 1 {
               data = dataArray[1]
            }else if str == 2 {
               data = dataArray[2]
            }else if str == 3 {
               data = dataArray[3]
            }else if str == 4 {
               data = dataArray[4]
            }else if str == 5 {
               data = dataArray[5]
            }else if str == 6 {
               data = dataArray[6]
            }else if str == 7 {
               data = dataArray[7]
            }else if str == 8 {
               data = dataArray[8]
            }else if str == 9 {
               data = dataArray[9]
            }else if str == 10 {
               data = dataArray[10]
            }else if str == 11 {
               data = dataArray[11]
            }else if str == 12 {
               data = dataArray[12]
            }else if str == 13 {
               data = dataArray[13]
            }else if str == 14 {
               data = dataArray[14]
            }else if str == 15 {
               data = dataArray[15]
            }
            print(data)
            cell.label.text = data[indexPath.row][0]
            
            
            // セルのテキストにデータ配列の要素を表示
            return cell
        }
    
        

    }
struct kotowaza{
    let name: String
    let meaning: String
    let animal: String
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


