//
//  BubbleManager.swift
//  testForFW
//
//  Created by Mohammed on 23/02/2022.
//

import UIKit

class BubbleManager {
    /// Represents a shared manager used across AllBubbles.
    static var shared = BubbleManager()
    var bubbleType: BubbleLines!
    var tailType: TailType!
    var tailPosition: TailPosition!
    
    public func configureBubble(bubbleType: BubbleLines, tailType: TailType, tailPosition: TailPosition){
        self.bubbleType = bubbleType
        self.tailType = tailType
        self.tailPosition = tailPosition
    }
}
