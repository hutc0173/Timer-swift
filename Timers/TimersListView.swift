//
//  TimersListView.swift
//  Timers
//
//  Created by sammy hutchinson on 2024-11-01.
//

import SwiftUI

struct TimersListView: View {
    
    var timers: [Timer] = [
        Timer(duration: 100)
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(timers) {timer in
                    Text("\(timer.duration)")
                }
            }
            .navigationTitle("Timers")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // noop
                    } label: {
                        Text("Add")
                    }
                }
            }
        }
    }
}

#Preview {
    TimersListView()
}
