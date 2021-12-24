//
//  ContentView.swift
//  Slots Game
//
//  Created by Aaditya Shah on 3/15/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var card1 = "apple"
    @State var card2 = "cherry"
    @State var card3 = "star"
    @State var credits = 1000
    
    var body: some View {
        
        ZStack {
            
            Image("back4app").resizable().ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Group {
                    
                    Text("                   Slots!                      ") .font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white).padding().background(Color.blue).cornerRadius(1).offset(x: 0, y: -65.0)
                    
                    Text("Credits: " + String(credits)) .font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white).padding().background(Color.gray).cornerRadius(20).offset(x: 0, y: -65.0)
                }
    
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    Image(card1).resizable().aspectRatio(contentMode: .fit).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).cornerRadius(15)
                    Spacer()
                    Image(card2).resizable().aspectRatio(contentMode: .fit).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).cornerRadius(15)
                    Spacer()
                    Image(card3).resizable().aspectRatio(contentMode: .fit).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).cornerRadius(15)
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    // Change Cards
                    
                    let card1new = Int.random(in: 1...3)
                    let card2new = Int.random(in: 1...3)
                    let card3new = Int.random(in: 1...3)
                    
                    if card1new == 1 {
                        card1 = "apple"
                    }
                    else if card1new == 2 {
                        card1 = "cherry"
                    }
                    else if card1new == 3 {
                        card1 = "star"
                    }
                    
                    if card2new == 1 {
                        card2 = "apple"
                    }
                    else if card2new == 2 {
                        card2 = "cherry"
                    }
                    else if card2new == 3 {
                        card2 = "star"
                    }
                    if card3new == 1 {
                        card3 = "apple"
                    }
                    else if card3new == 2 {
                        card3 = "cherry"
                    }
                    else if card3new == 3 {
                        card3 = "star"
                    }
                    
                    //Change Credits
                    
                    if card3 == card2 && card2 == card1 {
                            credits += 50
                    }
                    else if card1 == card2 || card1 == card3 || card2 == card3 {
                        credits += 10
                    }
                    else {
                        credits = credits - 100
                    }
                }, label: {
                    Text("Spin!") .font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white).padding().background(Color.blue).cornerRadius(20).offset(x: 0, y: -65.0)
                })
                
                Spacer()
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
