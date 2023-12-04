//
//  User.swift
//  investment 101
//
//  Created by Celine Tsai on 1/9/23.
//

import Foundation
import SwiftUI

struct User {
    var id: Int
    var levelProgress: Int
    var moneyLevel: Int
    var username: String
    var XP: Int
}

var users: [User] = [
    User(id: 1, levelProgress: 1, moneyLevel: 100, username: "user1", XP: 0),
    User(id: 2, levelProgress: 2, moneyLevel: 100, username: "user2", XP: 0),
    User(id: 3, levelProgress: 3, moneyLevel: 100, username: "user3", XP: 0)
]

