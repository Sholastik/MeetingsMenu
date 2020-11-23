//
//  URLMeeting.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 23.11.2020.
//

import Foundation

class URLMeeting: MeetingStatic {
    private let url: URL
    
    init(title: String, url: String) {
        self.url = URL(string: url)!
        super.init(title: title)
    }
    
    override func provideURL() -> URL {
        return url
    }
}
