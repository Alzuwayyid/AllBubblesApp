//
//  ChatMsgCell.swift
//  testForFW
//
//  Created by Mohammed on 20/02/2022.
//

import UIKit
import RxSwift
import RxRelay
import RxCocoa

class ChatMsgCell: BaseChatCell {
    
    var label = UILabel()
    
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.setBubbleContent(for: label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
