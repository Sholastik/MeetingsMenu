//
//  StatusBarController.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import AppKit

class StatusBarController {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    
    init() {
        statusBar = NSStatusBar.init()
        statusItem = statusBar.statusItem(withLength: 28.0)
        
        if let statusBarButton = statusItem.button {
            statusBarButton.image = #imageLiteral(resourceName: "StatusBarIcon")
            statusBarButton.image?.size = NSSize(width: 18, height: 18)
            statusBarButton.image?.isTemplate = true
        }
        
        addMenu()
    }
    
    private func addMenu() {
        let menu = NSMenu()
        
        for (index, value) in MeetingsDatabase.getMeetings(dayOfWeek: 0).enumerated() {
            if let meeting = value {
                menu.addItem(MeetingMenuItem(index: index + 1, meeting: meeting))
            }
        }

        statusItem.menu = menu
    }
}
