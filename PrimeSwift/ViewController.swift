//
//  ViewController.swift
//  PrimeSwift
//
//  Created by MAEDAHAJIME on 2015/08/17.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvdisply: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 初期処理
        self.tvdisply.text = nil
        
        // 編集は不可 ストリートボード Behavion「editable」のチェックを外す
        self.tvdisply.editable = false
        
        // 約数の表示処理
        //self.doDivisor()
        
        // 素数表示処理
        self.doPrime()
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
            
            println("iの数値:\(i)")
        
            var l: Int = 0
            for var j = 1; j <= 10; j++ {
                
                println("jの値:\(i)(j)(k)")
                var k = i % j
                if k == 0 {
                    l++
                }
            }
            self.tvdisply.text = self.tvdisply.text.stringByAppendingFormat("%d 約数の個数:%d \n",i,l)
        }
    }
    
    // 素数表示処理
    func doPrime() {
        for var i = 1; i <= 100; i++ {
            var l = 0
            for var j = 1; j <= 10; j++ {
                var k = i % j
                if k == 0 {
                    l++
                }
            }
            if i <= 10 {
                if l == 1 || l == 2 {
                    self.tvdisply.text = self.tvdisply.text.stringByAppendingFormat("%d 素数:%d \n",i,l)
                }
            }
            else {
                if l == 1 {
                    self.tvdisply.text = self.tvdisply.text.stringByAppendingFormat("%d 素数:%d \n",i,l)
                }
            }
        }
    }
}

