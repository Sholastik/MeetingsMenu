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
    
    @objc private func update(_ sender: NSMenuItem) {
        addMenu()
    }
    
    @objc private func quit(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
    
    private func addMenu() {
        let menu = NSMenu()
        
        let dayOfWeek = (Calendar.current.dateComponents([.weekday], from: Date()).weekday! - 2 + 7) % 7
        
        var keyEquivalent = 0
        
        for (index, value) in MeetingsDatabase.getMeetings(dayOfWeek: dayOfWeek).enumerated() {
            if let meeting = value {
                menu.addItem(MeetingMenuItem(index: index + 1, meeting: meeting, keyEquivalent: String(keyEquivalent)))
                keyEquivalent += 1
            }
        }
        
        let updateButton = NSMenuItem(title: "Обновить", action: #selector(update(_:)), keyEquivalent: "u")
        let quitButton = NSMenuItem(title: "Закрыть", action: #selector(quit(_:)), keyEquivalent: "")
        
        updateButton.target = self
        quitButton.target = self
        
        menu.addItem(updateButton)
        menu.addItem(quitButton)

        statusItem.menu = menu
    }
}
