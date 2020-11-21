//
//  MeetingDynamic.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import Foundation

class MeetingDynamic: Meeting {
    override func open() {
        getURLAndJoin()
    }
    
    func getURLAndJoin() {
        fatalError("Subclasses need to implement the 'provideURL()' method.")
    }
}
