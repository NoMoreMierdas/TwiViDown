//
//  AppDelegate.swift
//  TwiViDown
//
//  Created by David Alarcon on 29/5/21.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var tdvStatusBar: TVDStatusBar?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        tdvStatusBar = .init()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

