//
//  BubbleManager.swift
//  testForFW
//
//  Created by Mohammed on 21/02/2022.
//

import UIKit

/// `BubbleFactory` works as an interactor between the cells and all views inside the bubble
public class BubbleFactory{
    
    // MARK: - Properities
    var bubbleMaker: BubbleMaker!
    var superViewFrame: CGRect!{
        didSet{
            bubbleMaker.superViewFrame = superViewFrame
        }
    }
    
    convenience init(bubbleType: BubbleLines, tailType: TailType, tailPosition: TailPosition) {
        self.init()
        bubbleMaker = BubbleMaker(bubbleType: bubbleType, tailType: tailType, tailPosition: tailPosition)
    }
    func getBubbleView() -> UIView{
        return bubbleMaker.bubbleView
    }
    
    func bubbleViewDraw(){
        bubbleMaker.makeBubble()
    }
}
