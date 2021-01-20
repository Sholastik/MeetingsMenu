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
            Meetings.Russian,
            Meetings.Chemistry,
            nil,
            Meetings.Geography,
            Meetings.PhysicalEducation,
            Meetings.Physics,
            nil,
            Meetings.SocialStudies,
            nil,
            Meetings.ComputerScienceModule
        ],
        [
            Meetings.ComputerScience,
            Meetings.ComputerScience,
            nil,
            Meetings.Literature,
            Meetings.Geometry,
            Meetings.Algebra,
            Meetings.History,
            Meetings.Literature
        ],
        [
            Meetings.Algebra,
            Meetings.Algebra,
            Meetings.Biology,
            Meetings.Biology,
            Meetings.Geometry,
            Meetings.PhysicalEducation,
            nil,
            Meetings.Geometry,
            Meetings.SpecialMaths
        ],
        [
            Meetings.German,
            Meetings.English,
            Meetings.Literature,
            Meetings.German,
            Meetings.Russian,
            Meetings.Geometry,
            Meetings.History,
            Meetings.SocialStudies
        ],
        [
            Meetings.Algebra,
            Meetings.English,
            Meetings.Physics,
            Meetings.Physics,
            Meetings.Physics,
            Meetings.ComputerScience,
            Meetings.ComputerScience
        ],
        [
            nil,
            nil,
            nil,
            Meetings.English
        ],
        [
            Meetings.MathsModule
        ],
    ]
    
    static func getMeetings(dayOfWeek day: Int) -> [Meeting?] {
        return meetings[day]
    }
}
