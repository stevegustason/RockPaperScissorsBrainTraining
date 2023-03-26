//
//  ContentView.swift
//  RockPaperScissorsBrainTraining
//
//  Created by Steven Gustason on 3/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var options = ["Rock", "Paper", "Scissors"]
    @State private var opponentSelection = Int.random(in: 0...2)
    @State private var winOrLoseOptions = ["win", "lose"]
    @State private var winOrLose = Int.random(in: 0...1)
    @State private var numQuestion = 0
    @State private var numRight = 0
    
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            VStack {
                Text("Rock, Paper, Scissors")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                Text("Brain Training")
                    .font(.title.bold())
                    .foregroundColor(.white)
                Text("Score: \(numRight)/\(numQuestion)")
                    .font(.title)
                    .foregroundColor(.white)
                Text("Your opponent threw: \(options[opponentSelection])")
                    .font(.title)
                    .foregroundColor(.white)
                Text("Select the correct option to \(winOrLoseOptions[winOrLose])!!")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
