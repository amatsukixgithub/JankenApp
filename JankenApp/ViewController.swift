//
//  ViewController.swift
//  JankenApp
//
//  Created by あまつき on 2020/10/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    @IBAction func shuffleAction(_ sender: Any) {
        var newAnswerNumber = 0
        
        // 前回と異なる手を取得
        repeat {
            // 0~2の乱数を取得
            newAnswerNumber = Int.random(in: 0..<3)
        }while answerNumber == newAnswerNumber
        
        // 次の手
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            answerLabel.text = "グー！！！"
            answerImageView.image=UIImage(named: "gu")
        } else if answerNumber == 1 {
            answerLabel.text = "チョキ！！！"
            answerImageView.image=UIImage(named: "choki")
        } else if answerNumber == 2 {
            answerLabel.text = "パー！！！"
            answerImageView.image=UIImage(named: "pa")
        }
    }
}

