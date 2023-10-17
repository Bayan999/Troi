//
//  main_page.swift
//  back
//
//  Created by Bayan on 27/03/1445 AH.
//

import SwiftUI

struct main_page: View {
    var body: some View {
        
        NavigationView{
            
            ZStack {
                Color("1")
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Text(" أهلا نوره")
                        .font(.custom("Al Bayan", size: 30))
                        .foregroundColor(.black)
                        .position(x: 100, y: 80)
                        .multilineTextAlignment(.center)
                        .frame(width: 208, height: 110)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("2"))
                            .frame(width: 295, height: 110)
                            .shadow(radius: 2)
                        HStack {
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                HStack {
                                    
                                    Text("تأمل")
                                        .font(.custom("Al Bayan", size: 30))
                                        .foregroundColor(.black)
                                    Image("tamal")
                                        .resizable()
                                        .frame(width: 117.0, height: 98)
                                        .offset(x: 40, y: 0)
                                        .shadow(radius: 5)
                                    
                                }
                                .background(Color("2"))
                                .frame(width: 295.0, height: 110)
                                .contentShape(Rectangle()) // Set the content shape of the button
                                
                                .onTapGesture {
                                    // Action to perform when any part of the button is tapped
                                }
                            }
                        }
                        .frame(width: 295.0, height: 110)
                    }
                    .offset(x: 0, y: 80)
                    
                    
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("2"))
                            .frame(width: 295, height: 110)
                            .shadow(radius: 2)
                        HStack {
                            NavigationLink(destination: Thechoices()) {
                                // Action to perform when the button is tapped
                                
                                
                                HStack {
                                    
                                    Text("تنفس")
                                        .font(.custom("Al Bayan", size: 30))
                                        .foregroundColor(.black)
                                    ZStack {
                                        Image("tnfs")
                                            .resizable()
                                            .frame(width: 120.0, height: 110)
                                        
                                            .shadow(radius: 5).offset(x: 40, y: 0)
                                        
                                        Image("tnfs2")
                                            .resizable()
                                            .frame(width: 90.0, height: 70)
                                            .offset(x: 40, y: 0)
                                            .shadow(radius: 5)
                                    }
                                    
                                }
                                .background(Color("2"))
                                .frame(width: 295.0, height: 110)
                                .contentShape(Rectangle()) // Set the content shape of the button
                                
                                //.onTapGesture {
                                // Action to perform when any part of the button is tapped
                                // }
                            }
                        }
                        .frame(width: 295.0, height: 110)
                    }
                    .offset(x: 0, y: 100)
                    
                    
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("2"))
                            .frame(width: 295, height: 110)
                            .shadow(radius: 2)
                        HStack {
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                HStack {
                                    
                                    Text("أصوات")
                                        .font(.custom("Al Bayan", size: 30))
                                        .foregroundColor(.black)
                                    Image("aswat")
                                        .resizable()
                                        .frame(width: 117.0, height: 98)
                                        .offset(x: 40, y: 0)
                                        .shadow(radius: 5)
                                }
                                .background(Color("2"))
                                .frame(width: 295.0, height: 110)
                                .contentShape(Rectangle()) // Set the content shape of the button
                                
                                .onTapGesture {
                                    // Action to perform when any part of the button is tapped
                                }
                            }
                        }
                        .frame(width: 295.0, height: 110)
                    }
                    .offset(x: 0, y: 120)
                    
                    
                    
                    Spacer()
                        
                    
                }}
            }}}

//var body: some View {
    //ContentView().createTabView()
    
    
//}
    


#Preview {
    main_page()
}

