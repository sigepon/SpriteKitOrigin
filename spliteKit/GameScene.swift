//
//  GameScene.swift
//  spliteKit
//
//  Created by 菊池 重夫 on 2016/01/22.
//  Copyright © 2016年 sigepon. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    var initiated: Bool = false
    
    override func didMoveToView(view: SKView) {
        if (!initiated){
            initContent()
            self.initiated = true
        }
    }
    
    func initContent() {
        self.backgroundColor = SKColor.blueColor() // 背景色設定
        let label = newHelloNode() // テキストノードの作成
        self.addChild(label) // sceneにテキストノードを追加
    }
    
    func newHelloNode(_: Void) -> SKLabelNode {
        let helloNode = SKLabelNode(text: "Hello, World!")
        helloNode.fontColor = UIColor(red: 1.0, green:1.0, blue: 1.0, alpha: 1)
        helloNode.fontSize = 50
        helloNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        
        return helloNode
    }
    
}

