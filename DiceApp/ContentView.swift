//
//  ContentView.swift
//  DiceApp
//
//  Created by Apextech on 11/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var index1 = 1
    @State private var index2 = 1
    
    
    var body: some View {
        
        ZStack{
            
            Image("GreenBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                
                Color.clear.frame(height: 24)
                
                Image("DiceeLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250)
                
                Spacer()
                
                HStack{
                    

                    Image("Dice\(index1)")
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 120, height: 120)
                    
                    Color.clear.frame(width: 40, height: 40)
                    
                    Image("Dice\(index1)")
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 120, height: 120)
                    
                }
                
                Spacer()
                
                Button(
                    action: {
                        index1 = .random(in: 1...6)
                        index2 = .random(in: 1...6)
                    }, label: {
                        Text("Roll")
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    })
                    .frame(width: 200, height: 64)
                    .background(Color(red: 0.83, green: 0.33, blue: 0.00))
                
                Color.clear.frame(width: 40, height: 40)
                
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
