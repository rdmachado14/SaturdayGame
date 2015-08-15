//
//  GameScene.swift
//  TesteBolaMagica
//
//  Created by Rodrigo Machado on 8/15/15.
//  Copyright (c) 2015 Rodrigo DAngelo Silva Machado. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    override func didMoveToView(view: SKView)
    {
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
//    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
//    {
//        if motion == .MotionShake
//        {
//            print("mexeu!")
//        }
//    }
//    
//    override func canBecomeFirstResponder() -> Bool
//    {
//        return true
//    }
    
}
