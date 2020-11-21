//
//  MeetingStatic.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import Foundation

class MeetingStatic: Meeting {
    override func open() {
        joinMeeting(url: provideURL())
    }
    
    func provideURL() -> URL {
        fatalError("Subclasses need to implement the 'provideURL()' method.")
    }
}
