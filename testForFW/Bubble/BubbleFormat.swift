//
//  BubbleViewFormat.swift
//  testForFW
//
//  Created by Mohammed on 21/02/2022.
//

import UIKit

/// `BubbleType` is the type chosen by the client. based on the type
/// the bubble will be drawn accordingly.
public enum BubbleLines{
    case longCornerLines
    case shortCornerLines
}

/// `TailType` is the type of tail that will be embeded to the bubble
public enum TailType{
    case noTail
    case sharpCorner
    case regular
}

/// `TailPosition` is for the position of the tail in the bubble
public enum TailPosition{
    case bottomCorner
    case upperCorner
    case aboveCorner
    case middle
}

/// `BubbleType` to specify whether it's an audio, text or media.
public enum BubbleType{
    case text
    case media
    case audio
}
