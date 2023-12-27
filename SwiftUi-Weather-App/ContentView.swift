//
//  ContentView.swift
//  SwiftUi-Weather-App
//
//  Created by Hadiuzzaman on 16/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Dhaka, Bangladesh").font(.system(size: 30,weight: .medium, design:.monospaced)).foregroundColor(Color.white).padding()
                VStack{
                    Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio( contentMode:.fit).frame(width: 180, height: 180)
                }
                
                Text("76°").font(.system(size: 70,weight: .medium))
                
                HStack{
                    VStack{
                        Text("Sat").font(.system(size: 24))
                        Image(systemName: "cloud.sun.rain.fill").renderingMode(.original).resizable().frame(width: 50, height: 50)
                    }
                    VStack{
                        Text("Sat").font(.system(size: 24))
                        Image(systemName: "cloud.sun.rain.fill").renderingMode(.original).resizable().frame(width: 50, height: 50)
                    }
                    VStack{
                        Text("Sat").font(.system(size: 24))
                        Image(systemName: "cloud.sun.rain.fill").renderingMode(.original).resizable().frame(width: 50, height: 50)
                    }
                    VStack{
                        Text("Sat").font(.system(size: 24))
                        Image(systemName: "cloud.sun.rain.fill").renderingMode(.original).resizable().frame(width: 50, height: 50)
                    }
        
                }
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Refresh Weather").frame(width: 280,height: 60).background(.white).cornerRadius(10).font(.system(size: 18,weight: Font.Weight.bold))
                }
                
                    Spacer()
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
