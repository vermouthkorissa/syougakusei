import UIKit

class AnimalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
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
        
        // 指定の遷移先に遷移する（最低限の処理）
        performSegue(withIdentifier: "ListTableViewController", sender: nil)
    }

        
       
        
       
    }


class CustomCell: UICollectionViewCell {
    var destinationViewController: UIViewController?
    
    // 他のプロパティやメソッドもここに追加することができます
}


  


