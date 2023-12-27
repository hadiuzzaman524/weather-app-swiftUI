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
            BackgroundView()
            VStack{
                CityNameView(cityName: "Dhaka, Bangladesh")
               
                WeatherSummary()
                   
                HStack{
                    DayWiseWeatherCondition(dayName: "Sat", iconName: "cloud.sun.fill")
                    DayWiseWeatherCondition(dayName: "Sun", iconName: "cloud.sun.fill")
                    DayWiseWeatherCondition(dayName: "Mon", iconName: "cloud.sun.fill")
                    DayWiseWeatherCondition(dayName: "Thu", iconName: "cloud.sun.fill")
                    DayWiseWeatherCondition(dayName: "Wed", iconName: "cloud.sun.fill")
                
        
                }
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Refresh Weather").frame(width: 280,height:60).background(.white).cornerRadius(10).font(.system(size: 18,weight: Font.Weight.bold))
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

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct CityNameView: View {
    var cityName:String
    var body: some View {
        Text("\(cityName)").font(.system(size: 30,weight: .medium, design:.monospaced)).foregroundColor(Color.white).padding()
    }
}

struct WeatherSummary: View {
    var body: some View {
        VStack{
            Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio( contentMode:.fit).frame(width: 180, height: 180)
            Text("76°").font(.system(size: 70,weight: .medium))
        }
     
    }
}

struct DayWiseWeatherCondition: View {
    
    var dayName:String
    var iconName:String
    
    var body: some View {
        VStack{
            Text("\(dayName)").font(.system(size: 24))
            Image(systemName: "\(iconName)").renderingMode(.original).resizable().frame(width: 50, height: 50)
        }
    }
}
