//
//  ContentView.swift
//  StopWatch
//
//  Created by Muktar Hussein on 27/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var timeElapsed: TimeInterval = 0
    @State private var laps: [String] = []
    @State private var timer: Timer?

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text(timeFormatted(timeElapsed))
                .font(.largeTitle)
                .padding()

            HStack(spacing: 20) {
                Button(action: startStop) {
                    Text(timer == nil ? "Start" : "Stop")
                        .padding()
                        .foregroundColor(.white)
                        .background(timer == nil ? Color.green : Color.red)
                        .cornerRadius(10)
                }

                Button(action: lap) {
                    Text("Lap")
                        .padding()
                        .foregroundColor(.white)
                        .background(timeElapsed == 0 ? Color.gray : Color.blue)
                        .cornerRadius(10)
                }

                Button(action: reset) {
                    Text("Reset")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.cyan)
                        .cornerRadius(10)
                }
            }
            .padding()

            List(laps.reversed(), id: \.self) { lap in
                Text(lap)
            }
            .listStyle(.plain)
            .padding()
        }
    }

    func startStop() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                timeElapsed += 0.1
            }
        } else {
            timer?.invalidate()
            timer = nil
        }
    }

    func lap() {
        guard timeElapsed != 0 else { return }
        laps.append(timeFormatted(timeElapsed))
    }

    func reset() {
        timeElapsed = 0
        laps.removeAll()
        timer?.invalidate()
        timer = nil
    }

    func timeFormatted(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        let milliseconds = Int((time * 10).truncatingRemainder(dividingBy: 10))

        return String(format: "%02d:%02d.%d", minutes, seconds, milliseconds)
    }
}

#Preview {
    ContentView()
}
