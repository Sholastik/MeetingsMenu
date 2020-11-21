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
}
