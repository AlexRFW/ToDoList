//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Alex Witkamp on 01-03-18.
//  Copyright © 2018 Alex Witkamp. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
    
}

class ToDoCell: UITableViewCell {
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var delegate: ToDoCellDelegate?
    
    @IBAction func checkmarkTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
        
    }
    
}
