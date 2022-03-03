//
//  BubbleViews.swift
//  testForFW
//
//  Created by Mohammed Alzuwayyid on 21/02/2022.
//

import UIKit

/// `BubbleMaker` is responsible for drawing and adding any attributes given by the client to the bubble
class BubbleMaker: UIView{
    
    // MARK: - Properities
    var bubbleView: UIView!
    var bezierPaths: BezierPaths!
    var superViewFrame: CGRect!{
        didSet{
            self.bubbleView = UIView(frame: superViewFrame)
        }
    }
    
    convenience init(bubbleType: BubbleLines, tailType: TailType, tailPosition: TailPosition) {
        self.init()
        self.bezierPaths = BezierPaths(bubbleType: bubbleType, tailType: tailType, tailPosition: tailPosition)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func makeBubble(){
        bubbleView.layer.mask = bezierPaths.makeShapeLayer(frame: bubbleView.frame)
        bubbleView.layer.addSublayer(bezierPaths.makeShapeLayer(frame: bubbleView.frame))
    }
    
    private func setupViews(){

    }
    
    
}
