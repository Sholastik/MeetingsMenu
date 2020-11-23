//
//  CanvasMeeting.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import Foundation

class CanvasMeeting: MeetingDynamic {
    let domain: String
    let token: String
    let group: Int
    
    init(title: String, canvasDomain domain: String, groupID group: Int, token: String) {
        self.domain = domain
        self.token = token
        self.group = group
        super.init(title: title)
    }
    
    override func createRequest() -> URLRequest {
        var request = URLRequest(url: URL(string: "https://\(domain)/api/v1/groups/\(group)/conferences")!)
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    
    override func process(data: Data, response: URLResponse) throws {
        let conferences: Conferences
        
        do {
            conferences = try JSONDecoder().decode(Conferences.self, from: data)
        } catch {
            throw MeetingError.invalidJson(data: data)
        }
        
        if !conferences.conferences.isEmpty, let conference = conferences.conferences.first, conference.isJoinable {
            joinMeeting(url: URL(string: "https://\(domain)/groups/\(group)/conferences/\(conference.id)/join")!)
        } else {
            throw MeetingError.noConference
        }
    }
}
