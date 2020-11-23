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
    
    func process(data: Data, response: URLResponse) throws {
        fatalError("Subclasses need to implement the 'processData()' method.")
    }
    
    func completionHandler(data: Data?, response: URLResponse?, error: Error?) {
        do {
            if let error = error {
                throw MeetingError.requestIsUnsuccessful(error: error)
            }
            
            if let response = response {
                if let data = data {
                    try process(data: data, response: response)
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
    
    func makeRequest(request: URLRequest) {
        URLSession.shared.dataTask(with: createRequest(), completionHandler: completionHandler).resume()
    }
}
