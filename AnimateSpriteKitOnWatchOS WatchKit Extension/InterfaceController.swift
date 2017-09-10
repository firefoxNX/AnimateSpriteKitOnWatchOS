//
//  InterfaceController.swift
//  AnimateSpriteKitOnWatchOS WatchKit Extension
//
//  Created by Vineet Bhatia on 9/10/17.
//  Copyright © 2017 Vineet Bhatia. All rights reserved.
//

import WatchKit
import Foundation
import SpriteKit

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var spriteKitScene: WKInterfaceSKScene!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let scene: SKScene = SKScene(fileNamed: "ProgressIndicatorScene.sks") {
            self.spriteKitScene.presentScene(scene, transition: .crossFade(withDuration: 0.1))
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
