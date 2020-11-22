//
//  MeetingsDatabase.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 22.11.2020.
//

import Foundation

class MeetingsDatabase {
    private static let meetings = [
        [
            nil,
            Meetings.Chemistry,
            Meetings.English,
            Meetings.Physics,
            Meetings.Physics,
            Meetings.Physics,
            Meetings.SocialStudies,
            Meetings.English,
            nil,
            Meetings.ComputerScienceModule
        ],
    ]
    
    static func getMeetings(dayOfWeek day: Int) -> [Meeting?] {
        return meetings[day]
    }
}
