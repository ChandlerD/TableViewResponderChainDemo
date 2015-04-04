//
//  CustomTableViewCell.swift
//  TableViewResponderChainDemo
//
//  Created by Chandler De Angelis on 4/2/15.
//  Copyright (c) 2015 Chandler De Angelis. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    /**
    Here is how you would send the actions to the table view using code

    @IBAction func redSelected(sender: AnyObject) {
        self.sendActionForSelector("changeRed:", sender: sender)
    }
    
    @IBAction func greenSelected(sender: AnyObject) {
        self.sendActionForSelector("changeGreen:", sender: sender)
    }
    
    @IBAction func blueSelected(sender: AnyObject) {
        self.sendActionForSelector("changeBlue:", sender: sender)
    }
    
    func sendActionForSelector(_sel: Selector, sender: AnyObject) {
        UIApplication.sharedApplication().sendAction(_sel, to: nil, from: sender, forEvent: nil)
    }
    */
}
