//
//  InterfaceController.swift
//  WKMenuDemoWatch Extension
//
//  Created by Stephen on 16/10/2015.
//  Copyright © 2015 lumiator.technology.com. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBAction func menuAddTapped() {
        print("menuAddTapped")
        let strContext = "Adding..."
        pushControllerWithName("AddController", context: strContext)
    }
    
    func maybeHandler() {
        print("Maybe or maybe not...")
    }
    
    @IBAction func btnAddMenu() {
        addMenuItemWithItemIcon(WKMenuItemIcon.Maybe, title: "Hmm..?", action: Selector("maybeHandler"))
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
