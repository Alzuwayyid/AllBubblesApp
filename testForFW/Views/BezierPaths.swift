//
//  BezierPaths.swift
//  testForFW
//
//  Created by Mohammed on 23/02/2022.
//

import UIKit

/// `BezierPaths` is responsible for drawing the bubble only
class BezierPaths {
    var bubbleType: BubbleLines!
    var tailType: TailType!
    var tailPosition: TailPosition!
    
    convenience init(bubbleType: BubbleLines, tailType: TailType, tailPosition: TailPosition){
        self.init()
        self.bubbleType = bubbleType
        self.tailType = tailType
        self.tailPosition = tailPosition
    }
    
    func makeShapeLayer(frame: CGRect) -> CAShapeLayer{
        let width: CGFloat = 0.96 * frame.width
        let height: CGFloat = frame.height

        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 22, y: height))
        bezierPath.addLine(to: CGPoint(x: width - 17, y: height))
        bezierPath.addCurve(to: CGPoint(x: width, y: height - 17), controlPoint1: CGPoint(x: width - 7.61, y: height), controlPoint2: CGPoint(x: width, y: height - 7.61))
        bezierPath.addLine(to: CGPoint(x: width, y: 17))
        bezierPath.addCurve(to: CGPoint(x: width - 17, y: 0), controlPoint1: CGPoint(x: width, y: 7.61), controlPoint2: CGPoint(x: width - 7.61, y: 0))
        bezierPath.addLine(to: CGPoint(x: 21, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 4, y: 17), controlPoint1: CGPoint(x: 11.61, y: 0), controlPoint2: CGPoint(x: 4, y: 7.61))
        bezierPath.addLine(to: CGPoint(x: 4, y: height - 11))
        bezierPath.addCurve(to: CGPoint(x: 0, y: height), controlPoint1: CGPoint(x: 4, y: height - 1), controlPoint2: CGPoint(x: 0, y: height))
        bezierPath.addLine(to: CGPoint(x: -0.05, y: height - 0.01))
        bezierPath.addCurve(to: CGPoint(x: 11.04, y: height - 4.04), controlPoint1: CGPoint(x: 4.07, y: height + 0.43), controlPoint2: CGPoint(x: 8.16, y: height - 1.06))
        bezierPath.addCurve(to: CGPoint(x: 22, y: height), controlPoint1: CGPoint(x: 16, y: height), controlPoint2: CGPoint(x: 19, y: height))
        bezierPath.close()

        let layer = CAShapeLayer()
        layer.path = bezierPath.cgPath
        layer.frame = CGRect(x: 0,
                                            y: 0,
                                            width: width,
                                            height: height)
        layer.fillColor = UIColor.systemBlue.cgColor
//        layer.strokeColor = UIColor.green.cgColor
        return layer
    }
}
