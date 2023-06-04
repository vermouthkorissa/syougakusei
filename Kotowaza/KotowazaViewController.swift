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
    
    
    @IBOutlet var kotolabel: UILabel!
    @IBOutlet var imilabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kotolabel.text = animal.name
        imilabel.text = animal.meaning
        

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
