//
//  Meeting.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import Foundation

class Meeting {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    func provideURL() -> URL? {
        fatalError("Subclasses need to implement the 'provideURL()' method.")
    }
    
    func joinMeeting() {
        if let url = provideURL() {
            NSWorkspace.shared.open(url)
        }
    }
}
