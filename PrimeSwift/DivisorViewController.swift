//
//  DivisorViewController.swift
//  PrimeSwift
//
//  Created by MAEDAHAJIME on 2015/08/17.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

class DivisorViewController: UIViewController {

    @IBOutlet weak var tvdisply: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        super.viewDidLoad()
        
        // 初期処理
        self.tvdisply.text = nil
        
        // 編集は不可 ストリートボード Behavion「editable」のチェックを外す
        self.tvdisply.editable = false
        
        // 約数の表示処理
        self.doDivisor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // 約数の表示処理
    func doDivisor() {
        
        // (初期値;)
        // ループ1
        for var i = 1; i <= 100; i++ {
            var l = 0
            
            // ループ2
            for var j = 1; j <= 10; j++ {
                var k = i % j
                
                // k = 0 割れたらならば lに1をプラス
                if k == 0 {
                    l++
                }
            }
            
            // AppendingFormat文字の追加
            self.tvdisply.text = self.tvdisply.text.stringByAppendingFormat("%d 約数の個数:%d \n",i,l)
        }
    }

}
