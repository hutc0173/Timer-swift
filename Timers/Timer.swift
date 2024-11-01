//
//  Timer.swift
//  Timers
//
//  Created by sammy hutchinson on 2024-11-01.
//

import SwiftUI

struct Timer: Identifiable {
    var id = UUID()
    var duration: TimeInterval
    var startTime = Date()
    var elapsed: TimeInterval {
        Date().timeIntervalSince(startTime)
    }
    var isRunning: Bool {
        elapsed < duration
    }
}
