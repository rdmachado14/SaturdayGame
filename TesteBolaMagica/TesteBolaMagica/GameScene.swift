//
//  GameScene.swift
//  TesteBolaMagica
//
//  Created by Rodrigo Machado on 8/15/15.
//  Copyright (c) 2015 Rodrigo DAngelo Silva Machado. All rights reserved.
//

import SpriteKit
import UIKit

class GameScene: SKScene
{
    
    var RespostaLabel: SKLabelNode?
    var bolinha: SKSpriteNode?
    
    override func didMoveToView(view: SKView)
    {
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
//        for touch in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
//        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func criarBolinha(){
        bolinha = SKSpriteNode(imageNamed: "Vermelho")
        bolinha?.xScale = 1
        bolinha?.yScale = 1
        bolinha?.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        bolinha?.name = "Vermelho"
        //countDown?.text = "Esquerda"
        addChild(bolinha!)
    }
    
    func criarTextoScore(){
        RespostaLabel =  SKLabelNode()
        RespostaLabel?.fontName = "Futura-Medium"
        RespostaLabel?.fontSize = 20;
        RespostaLabel?.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        RespostaLabel?.fontColor = SKColor.blackColor();
        RespostaLabel?.name = "Texto";
        RespostaLabel?.zPosition = 100;
        RespostaLabel?.text = "Sim"
        
        addChild(RespostaLabel!)
    }
    
//    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
//    {
//        let label = SKLabelNode()
//        var randomNumber = arc4random() % 4
//        randomNumber += 1
//        
//        switch(randomNumber)
//        {
//            case 1:
//                label.text = "Resp 1"
//                break;
//            
//            case 2:
//                label.text = "Resp 2"
//                break;
//            
//            case 3:
//                label.text = "Resp 3"
//                break;
//            
//            case 4:
//                label.text = "Resp 4"
//                break;
//            
//            default:
//                label.text = "Default"
//                break;
//        }
//    }
    
    
}
