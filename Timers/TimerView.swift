//
//  TimerView.swift
//  Timers
//
//  Created by sammy hutchinson on 2024-11-01.
//

import SwiftUI

struct TimerView: View {
    
    @State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0

    var body: some View {
        NavigationStack {
            VStack {
                Text("Timers")

                HStack {
                    Picker(selection: $hours, label: Text("Hours")) {
                        ForEach(0..<24) { hour in
                            Text("\(hour)").tag(hour)
                        }
                    }
                    .pickerStyle(.wheel)
                    Text("Hours")
                    
                    Picker(selection: $minutes, label: Text("Hours")) {
                        ForEach(0..<60) { hour in
                            Text("\(minutes)")
                        }
                    }
                    .pickerStyle(.wheel)
                    Text("hours")
                    
                    Picker(selection: $seconds, label: Text("Hours")) {
                        ForEach(0..<60) { hour in
                            Text("\(seconds)")
                        }
                    }
                    .pickerStyle(.wheel)
                    Text("hours")
                }
                .padding()
                
          
                //presets
                
                HStack {
                    Button {
                        //noop
                    } label: {
                        VStack {
                            Text("1")
                            Text("min")
                            
                        }
                        .foregroundStyle(Color.white)
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Circle())
                        
                    }
                    Button {
                        //noop
                    } label: {
                        VStack {
                            Text("2")
                            Text("min")
                            
                        }
                        .foregroundStyle(Color.white)
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Circle())
                        
                    }
                    Button {
                        //noop
                    } label: {
                        VStack {
                            Text("3")
                            Text("min")
                            
                        }
                        .foregroundStyle(Color.white)
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Circle())
                        
                    }
                    Button {
                        //noop
                    } label: {
                        VStack {
                            Text("5")
                            Text("min")
                            
                        }
                        .foregroundStyle(Color.white)
                        .frame(width: 50, height: 50)
                        .padding()
                        .background(Circle())
                        
                    }
                }
                
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // noop
                    } label: {
                        Text("Start")
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // noop
                    } label: {
                        Text("Cancel")
                    }
                }
            }
        }
    }
}
#Preview {
    TimerView()
}
