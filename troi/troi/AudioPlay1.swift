//
//  AudioPlay1.swift
//  lu
//
//  Created by Bayan on 29/03/1445 AH.
//

import SwiftUI
import AVFoundation
struct AudioPlay1: View {
    @State private var currentTime: TimeInterval = 0
    @State private var totalTime: TimeInterval = 100
    @State private var isShowingSheet = false
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationView {
        ZStack {
            
                Color("1")
                    .ignoresSafeArea()
                
                VStack {
                    //                    NavigationLink(destination: AudioPlay2()) {
                    //                        Text("رجوع  >")
                    //                            .font(.custom("Al Bayan", size: 18))
                    //                            .background(Color.clear)
                    //                            .foregroundColor(.black)
                    //                    }.offset(x:0 ,y:-220)
                    
                    
                    Text("اسم المحتوى")
                        .font(.custom("Al Bayan", size: 24))
                        .offset(x:0,y:-100)
                    
                    ZStack{
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("6")).frame(width: 353,height: 380)
                            .opacity(0.3)
                        Image("lotus").resizable().resizable().frame(width: 352.36,height: 233.9)
                            .opacity(0.9)
                        HStack{
                            Image("music").resizable().resizable().frame(width: 79,height: 79)
                                .offset(x: -90,y:-144)
                            Image("music").resizable().resizable().frame(width: 79,height: 79)
                                .offset(x: 80,y:-144)
                        }
                        
                        HStack(spacing: 100){
                            
                            Button(action: {
                            }, label: {
                                
                                Image(systemName: "gobackward.15").resizable().frame(width: 40,height: 40)
                                    .foregroundColor(.black)
                                
                                
                            })
                            Button(action: {
                            }, label: {
                                Image(systemName: "pause.fill").resizable().frame(width: 28,height: 36)
                                    .foregroundColor(.black)
                                
                            })
                            Button(action: {
                            }, label: {
                                Image(systemName: "goforward.15").resizable().frame(width: 40,height: 40)
                                    .foregroundColor(.black)
                                
                            })
                        }.offset(x:0 , y:50 )
                        VStack (spacing: 20){
                            // Audio Player UI
                            
                            Slider(value: $currentTime, in: 0...totalTime)
                                .padding(.horizontal)
                                .accentColor(.black)
                            
                                .offset(x: 0,y:150)
                            Text("\(formatTimeInterval(currentTime))                                                                         \(formatTimeInterval(totalTime))")
                                .padding()
                                .font(.caption)
                                .offset(x: 0,y:123)
                                .onReceive(timer) { _ in
                                    // Update current time
                                    if currentTime < totalTime {
                                        currentTime += 1
                                    }
                                }
                            
                            
                        }//end of VStack
                        VStack{
                            Button(action: {
                            }, label: {
                                
                                Image(systemName: "heart.fill")
                                    .resizable(resizingMode: .stretch)
                                    .foregroundColor(Color("3"))
                                //.resizable()
                                    .frame(width: 33.0, height: 33.0)
                                
                            })
                        }.offset(x:0,y:160)
                    }//end of ZStack
                    
                    ZStack {
                               RoundedRectangle(cornerRadius: 10)
                                   .foregroundColor(Color("2"))
                                   .frame(width: 295, height: 45)
                                   .shadow(radius: 1)
                               
                               Button(action: {
                                   isShowingSheet = true
                               }) {
                                   Text("شارك مع الأصدقاء")
                                       .background(Color("2"))
                                       .foregroundColor(.black)
                                       .frame(width: 295.0, height: 45.0)
                               }
                           }
                           .sheet(isPresented: $isShowingSheet) {
                               share()
                           }//end of ZStack
                    .offset(x: 6, y: 30)
                }//end of VStack
                .padding()
                
            }//end of ZStack
            
            
        }
    }
    
    
}
    
    
    #Preview {
        AudioPlay1()
    }
    private func formatTimeInterval(_ timeInterval: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: timeInterval) ?? "0:00"
    }
    
    



#Preview {
    AudioPlay1()
}

