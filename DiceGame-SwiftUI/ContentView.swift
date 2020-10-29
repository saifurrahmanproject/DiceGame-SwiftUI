//
//  ContentView.swift
//  DiceGame-SwiftUI
//
//  Created by Tonoy Rahman on 2020-10-27.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
       
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Dicelogo")
                    .resizable()
                    .aspectRatio(1,contentMode: .fit )
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                    
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding()
                }
                .background(Color.purple)
            }
                
        }
    }
}

struct DiceView: View {
    
    let n: Int
    var body: some View {
      
        Image("Dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


