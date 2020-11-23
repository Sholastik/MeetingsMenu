//
//  Meeting.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import SwiftUI

class Meeting {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    func open() {
        fatalError("Subclasses need to implement the 'open()' method.")
    }
    
    func joinMeeting(url: URL) {
        NSWorkspace.shared.open(url)
    }
    
    func showRetryAlert(reason: String) {
        DispatchQueue.main.async {
            let alert = NSAlert()
            alert.messageText = reason
            alert.alertStyle = .warning
            alert.addButton(withTitle: "Ок")
            alert.addButton(withTitle: "Повторить")
            if (alert.runModal() == .alertSecondButtonReturn) {
                self.open()
            }
        }
    }
}
