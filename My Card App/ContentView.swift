//
//  ContentView.swift
//  My Card App
//
//  Created by Farid Hacizade on 30.01.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            ZStack{
                Color(red: 0.42, green: 0.36, blue: 0.91).ignoresSafeArea()
                VStack{
                    Image("ava")
                        .resizable()
                        .aspectRatio(
                        contentMode:.fill)
                        .frame(width: 250.0,
                               height: 250.0)
                        .clipShape(Circle())
                        .overlay(Circle()
                        .stroke(lineWidth: 8))
                        .padding(10)
                    Text("Hacizad Farid!").font(.title).fontWeight(.bold)
                    Text("IOS Developer ").font(.title2)
                    Divider()
                    Card(image: "phone.fill", message: "+994-77-388-42-42")
                    Card(image: "envelope.fill", message: "farid0558475484@gmail.com")
                        }
                }.foregroundColor(.white)
                    
            }
         
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image:String
    let message:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .frame(height: 50)
            .overlay(HStack
                     {Image(systemName: image)
                Text(message)
                    .foregroundColor(Color.black).fontWeight(.heavy)
                
            }.foregroundColor(Color.red)
            )
    }
}
