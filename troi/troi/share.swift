//
//  share.swift
//  lu
//
//  Created by Bayan on 29/03/1445 AH.
//

import SwiftUI

struct share: View {
    var body: some View {
        
        VStack{
            ZStack {
                Color("11")
                    .ignoresSafeArea()
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -30.0)
                    .opacity(0.8)
                VStack{ScrollView{
                    ZStack{
                        Text("شارك المحتوى مع من تحب")
                            .fontWeight(.light)
                            .position(CGPoint(x: 200, y: 70))
                            .font(.custom("Al Bayan", size: 30))
                        
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white)
                            .frame(width: 295, height: 45)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("2"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 160))
                        
                        Image(systemName: "magnifyingglass")
                            .position(CGPoint(x: 328, y: 160))
                        
                        Text("بحث")
                            .position(CGPoint(x: 280, y: 160))
                            .foregroundColor(.gray)
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("4"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("4"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 280))
                        
                        Image("firpic")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        //.cornerRadius(20)
                            .position(CGPoint(x: 320, y: 280))
                        
                        Text("سارة")
                            .position(CGPoint(x: 250, y: 270))
                        
                        //            Button(action: {}, label: {
                        //                Image("added")
                        //                    .resizable()
                        //                    .frame(width: 44,height: 44)
                        //                    .clipShape(/@START_MENU_TOKEN@/Circle()/@END_MENU_TOKEN@/)
                        //
                        //            })
                        
                        Image(systemName: "checkmark.circle")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("3"))
                        //.resizable()
                            .frame(width: 33.0, height: 33.0)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .position(CGPoint(x: 40, y: 280))
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("5"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("5"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 380))
                        Image(systemName: "checkmark.circle")
                        //Image("add")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("3"))
                        //.resizable()
                            .frame(width: 33.0, height: 33.0)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .position(CGPoint(x: 40, y: 380))
                        Text("لمى")
                            .position(CGPoint(x: 250, y: 370))
                        
                        Image("firpic")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        // .cornerRadius(20)
                            .position(CGPoint(x: 320, y: 380))
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("4"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("4"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 480))
                        
                        Image("firpic")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            .position(CGPoint(x: 320, y: 480))
                        
                        Text("هند")
                            .position(CGPoint(x: 250, y: 470))
                        Image(systemName: "checkmark.circle.fill")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("3"))
                        //.resizable()
                            .frame(width: 33.0, height: 33.0)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .position(CGPoint(x: 40, y: 480))
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("5"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("5"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 580))
                        
                        Image("firpic")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            .position(CGPoint(x: 320, y: 580))
                        
                        Text("فهده")
                            .position(CGPoint(x: 250, y: 570))
                        
                        Image(systemName: "checkmark.circle.fill")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("3"))
                        //.resizable()
                            .frame(width: 33.0, height: 33.0)
                            .frame(width: 44, height: 44)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .position(CGPoint(x: 40, y: 580))
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("4"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("4"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 680))
                        
                        Image("firpic")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            .position(CGPoint(x: 320, y: 680))
                        
                        Text("ولاء")
                            .position(CGPoint(x: 250, y: 670))
                        
                        Image(systemName: "checkmark.circle.fill")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("3"))
                        //.resizable()
                            .frame(width: 33.0, height: 33.0)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .position(CGPoint(x: 40, y: 680))
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("5"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("5"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 780))
                        
                        Image("firpic")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            .position(CGPoint(x: 320, y: 780))
                        
                        Text("منيرة")
                            .position(CGPoint(x: 250, y: 770))
                        
                        Image(systemName: "checkmark.circle")
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("3"))
                        //.resizable()
                            .frame(width: 33.0, height: 33.0)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .position(CGPoint(x: 40, y: 780))
                        
                        
                    }
                    
                }
                }
                
                //                    #Preview {
                //                        ContentView()
            }}}}
                
#Preview {
    share()
}

