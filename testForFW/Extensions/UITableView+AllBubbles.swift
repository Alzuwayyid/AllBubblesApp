//
//  UITableView+AllBubbles.swift
//  testForFW
//
//  Created by Mohammed on 23/02/2022.
//

import UIKit

extension AllBubblesWrapper where Base: UITableView{
    @discardableResult
    internal func dequeueReusableCell(withIdentifier id: String, for indexPath: IndexPath) -> BaseChatCell{
        let cell = self.base.dequeueReusableCell(withIdentifier: id, for: indexPath) as! BaseChatCell
        return cell
    }
    
    public func configureTableView(){
        self.base.separatorStyle = .none
    }
}

extension UITableView: AllBubblesCompatible { }
