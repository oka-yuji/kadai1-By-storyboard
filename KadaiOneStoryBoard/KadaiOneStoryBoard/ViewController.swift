//
//  ViewController.swift
//  KadaiOneStoryBoard
//
//  Created by 岡優志 on 2021/05/17.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //数値を入力するフィールド
    @IBOutlet private weak var inputNumFieldOne: UITextField!
    @IBOutlet private weak var inputNumFieldTwo: UITextField!
    @IBOutlet private weak var inputNumFieldThree: UITextField!
    @IBOutlet private weak var inputNumFieldFour: UITextField!
    @IBOutlet private weak var inputNumFieldFive: UITextField!
    //合計値を出力するラベル
    @IBOutlet private weak var sumLabel: UILabel!
    //TextFieldを全て配列に入れます
    private var inputNumArray: [UITextField] {[inputNumFieldOne, inputNumFieldTwo, inputNumFieldThree, inputNumFieldFour, inputNumFieldFive]}
    override func viewDidLoad() {
        super.viewDidLoad()
        //キーボードタイプを指定
        for item in inputNumArray {
            item.keyboardType = .numberPad
        }
    }
    @IBAction func actionButton(_ sender: Any) {
        //map, filter, reduceを使用して0以外のものを全て足す処理
        let sum = inputNumArray
            .map({ Int($0.text ?? "") ?? 0 }).reduce(0, +)
        //string型にしてlabelに渡します
        sumLabel.text = String(sum)
        //好みで初期化
        for item in inputNumArray {
            item.text = ""
        }
    }
}
