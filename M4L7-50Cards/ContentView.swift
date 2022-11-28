//
//  ContentView.swift
//  M4L7-50Cards
//
//  Created by David May on 11/26/22.
//

import SwiftUI

struct ContentView: View {
    
   
    var body: some View {
        
        
//        Build a UI that displays 50 cards, where the user can swipe left and right between cards.
//
//        Each card should have
//
//        A rectangle with corner radius 20 and shadow radius 10
//
//        Tip: Play around with the shadow modifier to find what you think looks best!
//
//        The rectangle’s background should be a random colour that changes every time a card is swiped
//
//        Tip: Use Double.random(in: 0..<1) to generate a random number between 0 and 1
//
//        The rectangle should size dynamically to fit the user’s screen
//
//        Overlayed on the rectangle should be the number of the card (starting from 1), surrounded by a black circle
//
//        Tip: Use SF symbols to make this easier
    
       // var stringName: String = ""
        VStack (alignment: .leading, spacing: 0) {
            
            Text("Featured Cards")
                 .padding(.leading)
                 .padding(.top, 10)
                 .font(.largeTitle)
                 .bold()
            
            GeometryReader { geo in
                
                
                
                TabView {
                    

                    
                    ForEach(0..<50) {index in
                        
                        ZStack (alignment: .center) {
                            
                            Rectangle()
                            
                                .foregroundColor(newColor())
                            
                            
                                .frame(width: geo.size.width - 60, height: geo.size.height - 130)
                                .cornerRadius(20)
                                .shadow(color: Color (.sRGB, red: 0, green: 0, blue: 0, opacity: 0.7),
                                        radius: 10, x: -10, y: -10)
                                .padding([.leading, .top])
                            
                            Image(systemName: "\(String(index+1)).circle")
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                                .padding(.leading)
                                .frame(width: geo.size.width, height: geo.size.height / 3, alignment: .center)
                            
                        }
                        
                        
                        
                    }
                    
                        
                    }
              }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

                    
                    
                    
                    
                    
                    Text("David's Cards")
                   // Text(stringName)
                }
                .padding()
            }
        
    }

// function to make new color

func newColor () -> Color {
    let randColor = Color(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1))
    return randColor
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
