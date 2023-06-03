import UIKit

class AnimalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    var kotowaza = 0
    
    let animalArray = ["うま", "いぬ", "さる", "おに", "ねこ", "狐", "むし", "蛙", "他", "魚", "とら", "狸", "へび", "はち", "とり", "仏"]
    
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
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
        
        if indexPath.row == 0 {
            kotowaza = 0
        }else if indexPath.row == 1 {
            kotowaza = 1
        }else if indexPath.row == 2 {
            kotowaza = 2
        }else if indexPath.row == 3 {
            kotowaza = 3
        }else if indexPath.row == 4 {
            kotowaza = 4
        }else if indexPath.row == 5 {
            kotowaza = 5
        }else if indexPath.row == 6 {
            kotowaza = 6
        }else if indexPath.row == 7 {
            kotowaza = 7
        }else if indexPath.row == 8 {
            kotowaza = 8
        }else if indexPath.row == 9 {
            kotowaza = 9
        }else if indexPath.row == 10 {
            kotowaza = 10
        }else if indexPath.row == 11 {
            kotowaza = 11
        }else if indexPath.row == 12 {
            kotowaza = 12
        }else if indexPath.row == 13 {
            kotowaza = 13
        }else if indexPath.row == 14 {
            kotowaza = 14
        }else if indexPath.row == 15 {
            kotowaza = 15
        }
        
        
        
        // 指定の遷移先に遷移する（最低限の処理）
        performSegue(withIdentifier: "ToListTableView", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToListTableView" {
            let animalname = segue.destination as! ListTableViewController
            animalname.str = kotowaza
            
        }
        
        
        
        
    }
    
    
    
    class CustomCell: UICollectionViewCell {
        var destinationViewController: UIViewController?
        
        // 他のプロパティやメソッドもここに追加することができます
    }
    
    
    
    
    
}
