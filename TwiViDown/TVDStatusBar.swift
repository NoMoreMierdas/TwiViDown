//
//  TVDStatusBar.swift
//  TwiViDown
//
//  Created by David Alarcon on 29/5/21.
//

import AppKit

class TVDStatusBar {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem

    init() {
        statusBar = NSStatusBar.init()
        statusItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        createMenu()
    }

    private func createMenu() {
        if let statusBarButton = statusItem.button {
            statusBarButton.image = NSImage(systemSymbolName: "square.and.arrow.down.on.square.fill", accessibilityDescription: nil)
        }

        let tvdMenu = NSMenu()
        tvdMenu.autoenablesItems = false

        let getVideoMenuItem = NSMenuItem()
        getVideoMenuItem.title = "Get Video from tweet URL"
        tvdMenu.addItem(getVideoMenuItem)

        let configurationMenuItem = NSMenuItem()
        configurationMenuItem.title = "Configure"
        tvdMenu.addItem(configurationMenuItem)

        tvdMenu.addItem(NSMenuItem.separator())

        let exitMenuItem = NSMenuItem()
        exitMenuItem.title = "Exit"
        exitMenuItem.target = self
        exitMenuItem.action = #selector(quitApplication(_:))
        tvdMenu.addItem(exitMenuItem)

        statusItem.menu = tvdMenu

    }

    // MARK: - Action
    @objc private func quitApplication(_ sender: Any?) {
        NSApp.terminate(sender)
    }
}
