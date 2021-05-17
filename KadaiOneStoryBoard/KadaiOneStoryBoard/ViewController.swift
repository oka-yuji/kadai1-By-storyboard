//
//  ViewController.swift
//  KadaiOneStoryBoard
//
//  Created by 岡優志 on 2021/05/17.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //数値を入力するフィールド
    @IBOutlet weak var inputNumFieldOne: UITextField!
    @IBOutlet weak var inputNumFieldTwo: UITextField!
    @IBOutlet weak var inputNumFieldThree: UITextField!
    @IBOutlet weak var inputNumFieldFour: UITextField!
    @IBOutlet weak var inputNumFieldFive: UITextField!
    //合計値を出力するラベル
    @IBOutlet weak var sumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //入力したデータは一旦全て配列に入れます
        let inputNumArray: [UITextField] = [inputNumFieldOne, inputNumFieldTwo, inputNumFieldThree, inputNumFieldFour, inputNumFieldFive]
        //キーボードタイプを指定
        for item in inputNumArray {
            item.keyboardType = UIKeyboardType.numberPad
        }
    }
    @IBAction func actionButton(_ sender: Any) {
        //入力したデータは一旦全て配列に入れます
        let inputNumArray: [UITextField] = [inputNumFieldOne, inputNumFieldTwo, inputNumFieldThree, inputNumFieldFour, inputNumFieldFive]
        
        //map, filter, reduceを使用して0以外のものを全て足す処理
        let sum = inputNumArray
            .map({ Int($0.text ?? "") ?? 0 }).filter({ $0 != 0 }).reduce(0, +)
        
        //string型にしてlabelに渡します
        sumLabel.text = String(sum)
        
        //好みで初期化
        for item in inputNumArray {
            item.text = ""
        }
    }
}
