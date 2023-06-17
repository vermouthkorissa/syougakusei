//
//  AddViewController.swift
//  Kotowaza
//
//  Created by 鈴木理紗子 on 2023/06/16.
//

import UIKit

class AddViewController: UIViewController {
    
    
    @IBOutlet var proTextField: UITextField!
    @IBOutlet var verbTextField: UITextField!
    
    var wordArray: [Dictionary<String,String>] = []
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "WORD") != nil{
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String,String>]
        }
    }
    
    @IBAction func saveWord() {
                
                
                let wordDictionary = ["ことわざ": proTextField.text!, "意味": verbTextField.text!]
                
                wordArray.append(wordDictionary)
            
            saveData.set(wordArray, forKey: "WORD")
            
            let alert = UIAlertController(title: "保存完了", message: "ことわざの登録が完了しました", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
            proTextField.text = ""
            verbTextField.text = ""

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
