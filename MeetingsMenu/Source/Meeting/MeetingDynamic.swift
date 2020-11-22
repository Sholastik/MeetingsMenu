//
//  MeetingDynamic.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import SwiftUI

class MeetingDynamic: Meeting {
    override func open() {
        makeRequest(request: createRequest())
    }
    
    func createRequest() -> URLRequest {
        fatalError("Subclasses need to implement the 'createRequest()' method.")
    }
    
    func completionHandler(data: Data?, response: URLResponse?, error: Error?) {
        fatalError("Subclasses need to implement the 'completitionHandler()' method.")
    }
    
    func makeRequest(request: URLRequest) {
        URLSession.shared.dataTask(with: createRequest(), completionHandler: completionHandler).resume()
    }
}
