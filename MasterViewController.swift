//
//  MasterViewController.swift
//  spliteKit
//
//  Created by 菊池 重夫 on 2016/01/22.
//  Copyright © 2016年 sigepon. All rights reserved.
//

import UIKit
import SpriteKit

class MasterViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        let skView = self.view as! SKView                   // 画面サイズと同じ大きさのscene作成
        // ストーリーボードでviewのクラスをSKViewに設定しているので、SKViewのインスタンスとして取得できる
        let scene = GameScene(size: skView.bounds.size)
        skView.presentScene(scene)                          //SKView上にsceneを設定
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
    }
}
