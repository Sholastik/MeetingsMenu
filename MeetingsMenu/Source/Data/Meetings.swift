//
//  Meetings.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 22.11.2020.
//

import Foundation

struct Meetings {
    static let Algebra = ZoomMeeting(title: "Алгебра", meetingID: "7943884700", meetingPassword: "c8TiqY")
    static let Biology = ZoomMeeting(title: "Биология", meetingID: "9105234849", meetingPassword: "L2tuUHVkSjVwMGdpWEpsemRjL3JPZz09")
    static let Chemistry = CanvasMeeting(title: "Химия", canvasDomain: "gymnasium.msu.ru", groupID: 25, token: "r84ef682FIMcGygw6pVtLp6pDKmqfty5MIaTyf00xxI5P5v6MWKDYIqhVBrTfTHq")
    static let ComputerScience = URLMeeting(title: "Информатика", url: "https://teaching.lozhnikov.org/b/and-mmz-kwm-ka5")
    static let ComputerScienceModule = DiscordMeeting(title: "Модуль по информатике", serverID: "580678871066738689", channelID: "690507823234285589")
    static let English = ZoomMeeting(title: "Английский язык", meetingID: "79076606653", meetingPassword: "1304")
    static let Geography = DiscordMeeting(title: "География", serverID: "750356917469053159", channelID: "750356917469053164")
    static let Geometry = ZoomMeeting(title: "Геометрия", meetingID: "7943884700", meetingPassword: "c8TiqY")
    static let German = ZoomMeeting(title: "Немецкий", meetingID: "4781164535", meetingPassword: "7Qm12U")
    static let History = ZoomMeeting(title: "История", meetingID: "2362162973", meetingPassword: "241617")
    static let Literature = ZoomMeeting(title: "Литература", meetingID: "4644708335", meetingPassword: "565505")
    static let MathsModule = ZoomMeeting(title: "Олимпиадная математика", meetingID: "8074846060", meetingPassword: "i6IWS96eqJuU6goYwSVOrjEMAyjqbA")
    static let SpecialMaths = ZoomMeeting(title: "Специальная математика", meetingID: "3765593426", meetingPassword: "212121")
    static let PhysicalEducation = ZoomMeeting(title: "Физкультура", meetingID: "5254109489", meetingPassword: "830384")
    static let Physics = CanvasMeeting(title: "Физика", canvasDomain: "gymnasium.msu.ru", groupID: 51, token: "r84ef682FIMcGygw6pVtLp6pDKmqfty5MIaTyf00xxI5P5v6MWKDYIqhVBrTfTHq")
    static let Russian = ZoomMeeting(title: "Русский", meetingID: "9930162561", meetingPassword: "631566")
    static let SocialStudies = ZoomMeeting(title: "Обществознание", meetingID: "83487519411", meetingPassword: "720198")
}
