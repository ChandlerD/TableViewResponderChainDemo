//
//  ViewController.swift
//  TableViewResponderChainDemo
//
//  Created by Chandler De Angelis on 4/2/15.
//  Copyright (c) 2015 Chandler De Angelis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell") as CustomTableViewCell
    }
    
    func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject) -> Bool {
        
        /*
        You can choose what you want to do with the actions here. You don't need to implement the actions, and can do whatever you want to do for each action inside this method. If you choose not to implement the actions, then you need to return false. Only return true if you are going to implement the actions.
        */
        
        return true
    }
    
    /*
    If you return true for a action in tableView:canPerformAction:forRowAtIndexPath:withSender:, you must implement the method.
    */
    func changeRed(sender: AnyObject) {
        self.changeSuperViewBackgroundColor(sender, color: UIColor.redColor())
    }
    
    func changeGreen(sender: AnyObject) {
        self.changeSuperViewBackgroundColor(sender, color: UIColor.greenColor())
    }
    
    func changeBlue(sender: AnyObject) {
        self.changeSuperViewBackgroundColor(sender, color: UIColor.blueColor())
    }
    
    func changeSuperViewBackgroundColor(sender: AnyObject, color: UIColor) {
        if let button = sender as? UIButton {
            if let parent = sender.superview {
                parent?.backgroundColor = color
            }
        }
    }
}

