//
//  BubblesViewable+Defaults.swift
//  testForFW
//
//  Created by Mohammed on 03/03/2022.
//

import UIKit

public extension BubblesViewable where Self: UITableViewCell{
    
    var bubbleContent: UIView! {
        return nil
    }
    
    var bubbleFactory: BubbleFactory! {
        return nil
    }
    
    var bubbleView: UIView! {
        return bubbleFactory.getBubbleView()
    }
    
    func setBubbleContent(for content: UIView){
        
    }
    
    var contentConstraints: [NSLayoutConstraint] {
        return [
            bubbleContent.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            bubbleContent.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32),
            bubbleContent.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            bubbleContent.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
        ]
    }
}
