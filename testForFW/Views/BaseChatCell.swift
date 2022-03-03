//
//  BaseChatCell.swift
//  testForFW
//
//  Created by Mohammed on 23/02/2022.
//

import UIKit
import RxSwift
import RxRelay
import RxCocoa

/// `BubbleContentSettable` defines a method where injecting the bubbleContent with decalred UIView by the client
/// The call must be in either constructer
protocol BubbleContentSettable {
    func setBubbleContent(for content: UIView)
}

/// `BaseChatCell` Have the pre-written configuration for bubble variables
class BaseChatCell: UITableViewCell, BubblesViewable, BubbleContentSettable{
    
    // MARK: - Properities
    var bubbleFactory: BubbleFactory!
    internal var bubbleView: UIView!
    var bubbleContent: UIView!
    var didEnterInit = PublishSubject<Bool>()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Configuration are retrieved from the Manager, it was set in the viewDidLoad of the main VC.
        self.bubbleFactory = BubbleFactory(bubbleType: BubbleManager.shared.bubbleType, tailType: BubbleManager.shared.tailType, tailPosition: BubbleManager.shared.tailPosition)
        self.bubbleFactory.superViewFrame = self.frame
        var _ = self.didEnterInit.subscribe (onNext: {
            event in
            self.layoutSubviews()
        })
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.bubbleView = self.bubbleFactory.getBubbleView()
        // Here we configure the constraints of the bubble and it's content view
        addSubview(bubbleView)
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(self.bubbleContent)
        self.bubbleContent.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(self.contentConstraints)
        let constraints = [
        bubbleView.topAnchor.constraint(equalTo: self.bubbleContent.topAnchor, constant: -16),
           bubbleView.bottomAnchor.constraint(equalTo: self.bubbleContent.bottomAnchor, constant: 16),
           bubbleView.leadingAnchor.constraint(equalTo: self.bubbleContent.leadingAnchor, constant: -16),
           bubbleView.trailingAnchor.constraint(equalTo: self.bubbleContent.trailingAnchor, constant: 16)
       ]
        NSLayoutConstraint.activate(constraints)
        
        self.bubbleFactory.bubbleViewDraw()
    }
    
    func setBubbleContent(for content: UIView) {
        self.bubbleContent = content
        self.didEnterInit.onNext(true)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
