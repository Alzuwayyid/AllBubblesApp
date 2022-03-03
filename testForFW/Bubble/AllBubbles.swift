//
//  AllBubbles.swift
//  testForFW
//
//  Created by Mohammed on 23/02/2022.
//

import UIKit
/// Wrapper for AllBubbles compatible types. This type provides an extension point for
/// convenience methods in AllBubbles.
public struct AllBubblesWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/// Represents an object type that is compatible with AllBubbles. You can use `bbl` property to get a
/// value in the namespace of AllBubbles.
public protocol AllBubblesCompatibleValue: AnyObject { }

extension AllBubblesCompatibleValue {
    /// Gets a namespace holder for AllBubbles compatible types.
    public var ab: AllBubblesWrapper<Self> {
        get { return AllBubblesWrapper(self) }
        set { }
    }
}

/// Represents an object type that is compatible with AllBubbles. You can use `bbl` property to get a
/// value in the namespace of AllBubbles.
public protocol AllBubblesCompatible: AnyObject { }

extension AllBubblesCompatible {
    /// Gets a namespace holder for AllBubbles compatible types.
    public var ab: AllBubblesWrapper<Self> {
        get { return AllBubblesWrapper(self) }
        set { }
    }
}

/**
 This is the configuration object for a table view cell
 that will be added using the BezirPath drawing.

 Usage:
 ```
 extension YourUITableViewCell: BubblesViewable {
    var contentConstraints: [NSLayoutConstraint] { return bubbleContent.topAnchor.constraint(equalTo: topAnchor, constant: Int) }
 }
 ```
**/
public protocol BubblesViewable: AnyObject{
    
    /**
        The bubble content will contain the view that will be presented inside the bubble
         It must be injected using the setBubbleContent(for:) in the cell
     */
    var bubbleContent: UIView! { get set }
    
    /**
     The factroy will be used to interact between the bubble view and the cell
     */
    var bubbleFactory: BubbleFactory! { get }
    
    /**
     The bubble property will be configured and added to the cell based on pre-defined attributes
     */
    var bubbleView: UIView! { get set }
    
    /**
     The method will be used to inject the bubble content from the cell
     */
    func setBubbleContent(for content: UIView)
    
    /**
     This constraints will have a default values and can be injected with a value from the cell
     */
    var contentConstraints: [NSLayoutConstraint] { get }
}
