//
//  ScndViewController.swift
//  testForFW
//
//  Created by Mohammed on 20/02/2022.
//

import UIKit

let cellId = "ID1"

#warning("Make the source data one generic variable")
protocol dataSource{
    var text: [String] {get set}
    var images: [UIImageView] {get set}
//    var audio: [String] = []
}

class ScndViewController: UITableViewController {

    
    let txtMsgs = [
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Every things seems to be working fine, however there seems to be an issue with the payment proccess indicator, might want to look at that!",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    "Hello bro",
    "How you doing mate?",
    "Fine, how bout u?",
    "Not bad",
    "Listen, can you review the code that I just pushed, every thing seems to be working fine but I just need to confirm that",
    "No worries",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Majeed"
        navigationController?.navigationBar.prefersLargeTitles = true

        tableView.register(ChatMsgCell.self, forCellReuseIdentifier: cellId)
        #warning("Override the tableViewDataSource to contain the below configureTableView() method")
        tableView.ab.configureTableView()
        
        BubbleManager.shared.configureBubble(bubbleType: .shortCornerLines, tailType: .sharpCorner, tailPosition: .middle)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return txtMsgs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMsgCell
//        cell.ab.configureBubble(bubbleType: .longCornerLines, tailType: .regular, tailPosition: .bottomCorner)
        cell.label.text = self.txtMsgs[indexPath.row]
        cell.label.numberOfLines = 0
        return cell
    }

}
