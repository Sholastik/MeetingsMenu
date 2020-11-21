//
//  CanvasConference.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import Foundation

struct Conference: Codable {
    let id: Int
    let endedAt, startedAt: String?

    enum CodingKeys: String, CodingKey {
        case id
        case endedAt = "ended_at"
        case startedAt = "started_at"
    }
    
    var isJoinable: Bool {
        get {
            return startedAt != nil && endedAt == nil
        }
    }
}
