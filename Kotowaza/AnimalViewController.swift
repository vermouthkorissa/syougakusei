import UIKit

class AnimalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let animalArray = ["うま", "いぬ", "さる", "おに", "ねこ", "狐", "むし", "蛙", "他", "魚", "とら", "狸", "へび", "はち", "とり", "仏"]
    let listTableViewControllerArray: [ListTableViewController] = [
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // UICollectionViewのデータソースメソッド
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let label = cell.contentView.viewWithTag(1) as! UILabel
        label.text = animalArray[indexPath.item]
        return cell
    }
    
    // UICollectionViewのレイアウトメソッド
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace: CGFloat = 4
        let cellSize: CGFloat = collectionView.bounds.width / 4 - horizontalSpace * 3
        return CGSize(width: cellSize, height: cellSize)
    }
    
    // UICollectionViewのデリゲートメソッド
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let selectedCell = collectionView.cellForItem(at: indexPath) as? CustomCell else {
            return
        }
        
        guard let destinationVC = selectedCell.destinationViewController else {
            return
        }
        
        let listTableViewController = listTableViewControllerArray[indexPath.item]
        listTableViewController.data = destinationVC.data
        
        navigationController?.pushViewController(listTableViewController, animated: true)
    }
}

class CustomCell: UICollectionViewCell {
    var destinationViewController: UIViewController?
    
    // 他のプロパティやメソッドもここに追加することができます
}

class ListTableViewController: UITableViewController {
    var data: [String] = []
    
    convenience init(data: [String]) {
        self.init()
        self.data = data
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

