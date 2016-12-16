//
//  AppDelegate.swift
//  TRexAboutWindowControllerDemo
//
//  Created by David Ehlen on 08.04.16.
//  Copyright © 2016 David Ehlen. All rights reserved.
//

import Cocoa
import TRexAboutWindowController

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var aboutWindowController: TRexAboutWindowController
    
    override init() {
        self.aboutWindowController = TRexAboutWindowController(windowNibName: "PFAboutWindow")
        super.init()
    }
    
    @IBAction func showAboutWindow(_ sender:AnyObject) {
        self.aboutWindowController.appURL = URL(string:"https://github.com/T-Rex-Editor/")
        self.aboutWindowController.appName = "TRex Demo"
        let font = NSFont(name: "HelveticaNeue", size: 11.0) ?? NSFont.systemFont(ofSize: 11.0)
        let color = NSColor.tertiaryLabelColor
        let attribs:[String:AnyObject] = [NSForegroundColorAttributeName:color,
                                          NSFontAttributeName:font]
        
        self.aboutWindowController.appCopyright = NSAttributedString(string: "Copyright (c) 2016 David Ehlen", attributes: attribs)
        
        self.aboutWindowController.windowShouldHaveShadow = true
        self.aboutWindowController.showWindow(nil)
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
}


