//
//  KotowazaViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/06/01.
//

import UIKit

struct Animal {
    let name: String
    let meaning: String
}

class KotowazaViewController: UIViewController {
    
    var animal: Animal!
    var knowlabel: String!
    
    @IBOutlet var kotolabel: UILabel!
    @IBOutlet var imilabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kotolabel.text = animal.name
        imilabel.text = animal.meaning
        

        // Do any additional setup after loading the view.
    }
    
    let dataArray:[[String]]=[
    ["馬子は馬に人や物をのせて運ぶ人のことだよ"],["念仏を唱えても、相手が馬では念仏のありがたみがわからないということ"],["「たけうま」と読み間違えないように注意！"],
    ["似ていることわざは「恩を仇で返す」"],["その内容が当然であるということを強調したいときに使うことが多いよ"],["「棒」を幸運と捉えるか、災難と捉えるかで意味が変わるところが特徴的だね"],
    ["似ていることわざは「かっぱの川流れ」、「弘法も筆の誤り」"],["「水と油」も相性が悪い意味でこのことわざの類義語になるね"],
    ["江戸時代の圧政の中の厳しい代官が由来になっているよ"],["似ていることわざは「すてる神あればひろう神あり」"],["鬼は強さの象徴として使われているね！"],
    ["似ていることわざは「豚に真珠」"],["「誰でもいいから手伝ってほしい」という意味を含むので、相手に直接言うのは失礼だよ"],
    ["いわゆるお天気雨のこと"],["「威」は「権力」や「権勢」、「借る」は「利用する」の意味だよ。"],
    ["似ていることわざは「山椒は小粒でもぴりりと辛い」"],["たでとは、タデ科植物のヤナギタデ類、刺身のつまに付いている赤や緑色の小さい二葉の芽（かいわれ）のこと"],["光の刺激に反応して近寄っていく「走光性」という昆虫の本能からくる行動を例えているよ"],
    ["古代に似ている句が多く書物に書かれていたことから、流行していたことがわかるね"],["似ていることわざは「うりのつるになすびはならぬ」"],["図々しい態度、無神経、図太いといった様子を表しているね"],
    ["苦労のわりに成果がまったく上がらないことを意味する「骨折り損のくたびれもうけ」は真反対の意味になるね"],["二度あることは三度あるが反対の意味になるね"],["「亀の甲」は「亀のこうら」、「年の功」は「長い年月」ということ。"],
    ["もともとは「魚、心あれば、水、心あり」という言葉で、次第に短縮され、現在に至る。"],["三寸の鯛でも、釣り上げる寸前で逃がしてしまうと、目の下一尺の鯛に見えてくることが由来"],["あまりきれいな水には魚が住めないということ"],
    ["似ていることわざは「清水の舞台から飛び降りる」"],["手柄の例えで「虎子」が使われているのは、大切にして手放さない物や秘蔵の金品を「虎の子」と言うように、虎が子を大事に守り育てるところから"],
    ["タヌキは臆病な動物で、驚いた時には倒れて一時的に気を失い、眠ったようになる。"],["似ていることわざは「絵に描いた餅」"],
    ["反対の意味のことわざは「画竜点睛（がりょうてんせい）」物事を完成させるために必要な、最後に加える仕上げのこと。"],["似ていることわざは「きじも鳴かずば撃たれまい」"],
    ["似ていることわざは「弱り目に祟り目」"],["似ていることわざは「二兎を追うものは、一兎をも得ず」"],
    ["似ていることわざは「三つ子のたましい百まで」"],["反対の意味のことわざは「かえるの子はかえる」"],["あなたの身近にもそんな人がいるんじゃないかな？"],
    ["類義語は「堪忍袋の緒が切れる」"],["「渡りに船」とは困っていない時でも使えるこのことわざと似ているが、使い方が少し異なることわざだよ"],["似ていることわざは「かっぱに水練」"]]
    var str = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "knowledgeView" {
            let nextView = segue.destination as! SimilarViewController
            nextView.str = knowlabel
        }
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
