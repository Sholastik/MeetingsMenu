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
    
    override func completionHandler(data: Data?, response: URLResponse?, error: Error?) {
        do {
            if let error = error {
                throw MeetingError.requestIsUnsuccessful(error: error)
            }
            
            if let response = response {
                if let data = data {
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
                    
                } else {
                    throw MeetingError.dataIsNull(response: response)
                }
            } else {
                throw MeetingError.responseIsNull
            }
            
        } catch MeetingError.noConference {
            showRetryAlert(reason: "Нет конференции")
        } catch {
            showRetryAlert(reason: error.localizedDescription)
        }
    }
}
