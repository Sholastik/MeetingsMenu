//
//  ZoomMeeting.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import SwiftUI

class ZoomMeeting: Meeting {
    private let id: String
    private let password: String
    
    init(title: String, meetingID id: String, meetingPassword password: String) {
        self.id = id
        self.password = password
        super.init(title: title)
    }
    
    override func provideURL() -> URL? {
        return URL(string: "zoommtg://zoom.us/join?confno=\(id)&pwd=\(password)")
    }
}
