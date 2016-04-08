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
    
    @IBAction func showAboutWindow(sender:AnyObject) {
        self.aboutWindowController.appURL = NSURL(string:"https://github.com/T-Rex-Editor/")!
        self.aboutWindowController.appName = "TRex Demo"
        let font:NSFont? = NSFont(name: "HelveticaNeue", size: 11.0)
        let color:NSColor? = NSColor.tertiaryLabelColor()
        let attribs:[String:AnyObject] = [NSForegroundColorAttributeName:color!,
                                          NSFontAttributeName:font!]
        
        self.aboutWindowController.appCopyright = NSAttributedString(string: "Copyright (c) 2016 David Ehlen", attributes: attribs)
        
        self.aboutWindowController.windowShouldHaveShadow = true
        self.aboutWindowController .showWindow(nil)
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
}


