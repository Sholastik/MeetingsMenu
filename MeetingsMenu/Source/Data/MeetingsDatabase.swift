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
        [
            Meetings.ComputerScience,
            Meetings.ComputerScience,
            Meetings.Literature,
            Meetings.Russian,
            Meetings.PhysicalEducation,
            Meetings.History,
            Meetings.Russian
        ],
        [
            Meetings.PhysicalEducation,
            Meetings.Biology,
            Meetings.Biology,
            Meetings.Geometry,
            Meetings.Geometry,
            Meetings.Algebra,
            Meetings.Algebra,
            Meetings.History,
            Meetings.SpecialMaths
        ],
        [
            Meetings.Geography,
            Meetings.Literature,
            Meetings.Algebra,
            Meetings.German,
            Meetings.Literature,
            Meetings.SocialStudies,
            Meetings.Algebra
        ],
        [
            Meetings.Geometry,
            Meetings.Geometry,
            Meetings.English,
            Meetings.Physics,
            Meetings.ComputerScience,
            Meetings.ComputerScience,
            Meetings.German
        ],
        [
        ],
        [
            Meetings.MathsModule
        ],
    ]
    
    static func getMeetings(dayOfWeek day: Int) -> [Meeting?] {
        return meetings[day]
    }
}
