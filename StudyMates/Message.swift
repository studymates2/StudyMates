//
//  Message.swift
//  StudyMates
//
//  Created by Kenneth Li on 5/24/19.
//  Copyright © 2019 Kenneth Li. All rights reserved.
//

import Foundation
import UIKit
import MessageKit

struct Member {
    let name: String
    let color: UIColor
}

struct Message {
    let member : Member
    let text: String
    let messageID: String
}

extension Message: MessageType {
    var sender: Sender {
        return Sender(id: member.name, displayName: member.name)
    }
    
    var messageId: String {
        return messageID
    }
    
    var sentDate: Date {
        return Date()
    }
    
    var kind: MessageKind {
        return .text(text)
    }
    
    
}
