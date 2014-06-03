//
//  AppDelegate.swift
//  Swift Window Blur
//
//  Created by Lee Brimelow on 6/3/14.
//  Copyright (c) 2014 Lee Brimelow. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    
    // define the visual effect view
    var blurryView = NSVisualEffectView(frame: NSRect(x: 0, y: 0, width: 800, height: 600))

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        
        // this is default value but is here for clarity
        blurryView.blendingMode = NSVisualEffectBlendingMode.BehindWindow
        
        // set the background to always be the dark blur
        blurryView.material = NSVisualEffectMaterial.Dark
        
        // set it to always be blurry regardless of window state
        blurryView.state = NSVisualEffectState.Active
        
        self.window.contentView.addSubview(blurryView)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

