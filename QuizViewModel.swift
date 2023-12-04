//
//  QuizViewModel.swift
//  investment 101
//
//  Created by Celine Tsai on 28/10/23.
//

import SwiftUI

extension UserDefaults {
    static var xpPoints: Int {
        get {
            return UserDefaults.standard.integer(forKey: "XP")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "XP")
        }
    }
}

class QuizViewModel: ObservableObject {
    @Published var xpPoints: Int {
        didSet {
            UserDefaults.xpPoints = xpPoints // Save to UserDefaults when updated
        }
    }

    init() {
        xpPoints = UserDefaults.xpPoints // Load XP points from UserDefaults
    }

    func updateXPPoints(_ newValue: Int) {
        xpPoints += newValue
    }
}

