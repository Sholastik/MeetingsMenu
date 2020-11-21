//
//  DiscordMeeting.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import SwiftUI

class DiscordMeeting: Meeting {
    private let server: String
    private let channel: String
    
    init(title: String, serverID server: String, channelID channel: String) {
        self.server = server
        self.channel = channel
        super.init(title: title)
    }
    
    override func provideURL() -> URL? {
        return URL(string: "discord://discordapp.com/channels/\(server)/\(channel)")
    }
}
