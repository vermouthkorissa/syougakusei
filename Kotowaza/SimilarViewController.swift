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
