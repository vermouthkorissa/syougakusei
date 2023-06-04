//
//  SimilarViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/06/04.
//

import UIKit

class SimilarViewController: UIViewController {

    @IBOutlet var knowlabel: UILabel!
    
    var str = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        knowlabel.text = str
        
        if str == "馬子にも衣装"{
            knowlabel.text = "馬子は馬に人や物をのせて運ぶ人のことだよ"
        } else if str == "馬の耳に念仏"{
            knowlabel.text = "念仏を唱えても、相手が馬では念仏のありがたみがわからないということ"
        } else if str == "竹馬の友"{
            knowlabel.text = "「たけうま」と読み間違えないように注意！"
        } else if str == "飼い犬に手を噛まれる"{
            knowlabel.text = "似ていることわざは「恩を仇で返す」"
        } else if str == "犬が西向きゃ尾は東"{
            knowlabel.text = "その内容が当然であるということを強調したいときに使うことが多いよ"
        } else if str == "犬も歩けば棒に当たる"{
            knowlabel.text = "「棒」を幸運と捉えるか、災難と捉えるかで意味が変わるところが特徴的だね"
        } else if str == "さるも木から落ちる"{
            knowlabel.text = "似ていることわざは「かっぱの川流れ」、「弘法も筆の誤り」"
        } else if str == "犬猿の仲"{
            knowlabel.text = "「水と油」も相性が悪い意味でこのことわざの類義語になるね"
        } else if str == "鬼の目にも涙"{
            knowlabel.text = "江戸時代の圧政の中の厳しい代官が由来になっているよ"
        } else if str == "渡る世間に鬼はない"{
            knowlabel.text = "似ていることわざは「すてる神あればひろう神あり」"
        } else if str == "鬼に金棒"{
            knowlabel.text = "鬼は強さの象徴として使われているね！"
        } else if str == "猫に小判"{
            knowlabel.text = "似ていることわざは「豚に真珠」"
        } else if str == "猫の手もかりたい"{
            knowlabel.text = "「誰でもいいから手伝ってほしい」という意味を含むので、相手に直接言うのは失礼だよ"
        } else if str == "きつねの嫁入り"{
            knowlabel.text = "いわゆるお天気雨のこと"
        } else if str == "とらの威を借るきつね"{
            knowlabel.text = "「威」は「権力」や「権勢」、「借る」は「利用する」の意味だよ。"
        } else if str == "一寸の虫にも五分のたましい"{
            knowlabel.text = "似ていることわざは「山椒は小粒でもぴりりと辛い」"
        } else if str == "たで食う虫も好き好き"{
            knowlabel.text = "たでとは、タデ科植物のヤナギタデ類、刺身のつまに付いている赤や緑色の小さい二葉の芽（かいわれ）のこと"
        } else if str == "とんで火に入る夏の虫"{
            knowlabel.text = "光の刺激に反応して近寄っていく「走光性」という昆虫の本能からくる行動を例えているよ"
        } else if str == "井の中の蛙、大海を知らず" {
            knowlabel.text = "古代に似ている句が多く書物に書かれていたことから、流行していたことがわかるね"
        } else if str == "かえるの子はかえる" {
            knowlabel.text = "似ていることわざは「うりのつるになすびはならぬ」"
        } else if str == "かえるの面に水"{
            knowlabel.text = "図々しい態度、無神経、図太いといった様子を表しているね"
        } else if str == "えびでたいをつる" {
            knowlabel.text = "苦労のわりに成果がまったく上がらないことを意味する「骨折り損のくたびれもうけ」は反対の意味になるね"
        } else if str == "柳の下のどじょう" {
            knowlabel.text = "二度あることは三度あるが反対の意味になるね"
        } else if str == "亀の甲より年の功" {
            knowlabel.text = "「亀の甲」は「亀のこうら」、「年の功」は「長い年月」ということ。"
        } else if str == "魚心あれば水心"{
            knowlabel.text = "もともとは「魚、心あれば、水、心あり」という言葉で、次第に短縮され、現在に至る。"
        } else if str == "にがした魚は大きい"{
            knowlabel.text = "三寸の鯛でも、釣り上げる寸前で逃がしてしまうと、目の下一尺の鯛に見えてくることが由来"
        } else if str == "水清ければ魚棲まず"{
            knowlabel.text = "あまりきれいな水には魚が住めないということ"
        } else if str == "虎の尾をふむ"{
            knowlabel.text = "似ていることわざは「清水の舞台から飛び降りる」"
        } else if str == "虎穴にいらずんば虎子を得ず"{
            knowlabel.text = "手柄の例えで「虎子」が使われているのは、大切にして手放さない物や秘蔵の金品を「虎の子」と言うように、虎が子を大事に守り育てるところから"
        } else if str == "たぬき寝入り"{
            knowlabel.text = "タヌキは臆病な動物で、驚いた時には倒れて一時的に気を失い、眠ったようになる。"
        } else if str == "とらぬたぬきの皮算用"{
            knowlabel.text = "似ていることわざは「絵に描いた餅」"
        } else if str == "蛇足"{
            knowlabel.text = "反対の意味のことわざは「画竜点睛（がりょうてんせい）」物事を完成させるために必要な、最後に加える仕上げのこと。"
        } else if str == "やぶをつついてへびをだす" {
            knowlabel.text = "似ていることわざは「きじも鳴かずば撃たれまい」"
        } else if str == "泣きつらにはち" {
            knowlabel.text = "似ていることわざは「弱り目に祟り目」"
        } else if str == "あぶはちとらず" {
            knowlabel.text = "似ていることわざは「二兎を追うものは、一兎をも得ず」"
        } else if str == "すずめ百までおどりわすれず" {
            knowlabel.text = "似ていることわざは「三つ子のたましい百まで」"
        } else if str == "とんびがたかをうむ" {
            knowlabel.text = "反対の意味のことわざは「かえるの子はかえる」"
        } else if str == "能ある鷹は爪を隠す" {
            knowlabel.text = "あなたの身近にもそんな人がいるんじゃないかな？"
        } else if str == "仏の顔も三度まで" {
            knowlabel.text = "類義語は「堪忍袋の緒が切れる」"
        } else if str == "地獄で仏に会ったよう" {
            knowlabel.text = "「渡りに船」とは困っていない時でも使えるこのことわざと似ているが、使い方が少し異なることわざだよ"
        } else if str == "釈迦に説法" {
            knowlabel.text = "似ていることわざは「かっぱに水練」"
        }
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
