//
//  CanvasError.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import Foundation

enum MeetingError: Error {
    case requestIsUnsuccessful(error: Error)
    case dataIsNull(response: URLResponse?)
    case invalidJson(data: Data)
    case responseIsNull
    case noConference
}
