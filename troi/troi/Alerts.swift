//
//  Alerts.swift
//  lu
//
//  Created by Bayan on 29/03/1445 AH.
//

import SwiftUI

struct Alerts: View {
    @State private var isShowingSheet = false
    var body: some View {
        
        
        VStack{
            
            
            
            
            ZStack {
                Color("1")
                    .ignoresSafeArea()
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -30.0)
                    .opacity(0.8)
                
                VStack{ScrollView{
                    ZStack{
                        Text("لقد وصلتك تنبيهات من الاصدقاء!")
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
                        
                        
                        //            NavigationStack{}
                        //            .resizable()
                        //            .frame(width: 295, height: 35)
                        //            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always), prompt: "بحث")
                        
                        // Image(systemName: "plus.circle.fill")
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("4"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("4"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 280))
                        
                        Image("img2")
                            .resizable()
                            .frame(width: 82, height: 72)
                        //.clipShape(Circle())
                            .cornerRadius(20)
                            .position(CGPoint(x: 320, y: 280))
                        
                        Text("سارة تدعوك إلى: تنفس لتفريغ التوتر")
                            .position(CGPoint(x: 140, y: 270))
                        
                        //            Button(action: {}, label: {
                        //                Image("added")
                        //                    .resizable()
                        //                    .frame(width: 44,height: 44)
                        //                    .clipShape(/@START_MENU_TOKEN@/Circle()/@END_MENU_TOKEN@/)
                        //
                        //            })
                        
                        //                        Image("added")
                        //                            .resizable()
                        //                            .frame(width: 44, height: 44)
                        //                            .clipShape(Circle())
                        //                            .position(CGPoint(x: 40, y: 280))
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("5"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("5"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 380))
                        
                        //                        Image("firpic")
                        //                            .resizable()
                        //                            .frame(width: 44, height: 44)
                        //                            .clipShape(Circle())
                        //                            .position(CGPoint(x: 320, y: 380))
                        
                        Text("لمى تدعوك إلى: التنفس لتحفيز التركيز")
                            .position(CGPoint(x: 140, y: 370))
                        
                        Image("img3")
                            .resizable()
                            .frame(width: 82, height: 72)
                        //.clipShape(Circle())
                            .cornerRadius(20)
                            .position(CGPoint(x: 320, y: 380))
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("4"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("4"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 480))
                        
                        Image("img4")
                            .resizable()
                            .frame(width: 82, height: 72)
                            .cornerRadius(20)
                            .position(CGPoint(x: 320, y: 480))
                        
                        Text("هند تدعوك إلى: تنفس للوصول للسكينة")
                            .position(CGPoint(x: 140, y: 470))
                        
                        //                        Image("added")
                        //                            .resizable()
                        //                            .frame(width: 44, height: 44)
                        //                            .clipShape(Circle())
                        //                            .position(CGPoint(x: 40, y: 480))
                        
                        
                        
                        ZStack {
                                   RoundedRectangle(cornerRadius: 10)
                                       .foregroundColor(Color("5"))
                                       .frame(width: 450, height: 100)
                                       .overlay(
                                           RoundedRectangle(cornerRadius: 10)
                                               .stroke(Color("5"), lineWidth: 2))
                                       .position(CGPoint(x: 200, y: 580))
                                       .onTapGesture {
                                           isShowingSheet = true
                                       }
                                   
                                   Image("img5")
                                       .resizable()
                                       .frame(width: 82, height: 72)
                                       .cornerRadius(20)
                                       .position(CGPoint(x: 320, y: 580))
                                       .onTapGesture {
                                           isShowingSheet = true
                                       }
                                   
                                   Text("فهده تدعوك إلى: التنفس بعمق")
                                       .position(CGPoint(x: 140, y: 570))
                                       .onTapGesture {
                                           isShowingSheet = true
                                       }
                               }
                               .sheet(isPresented: $isShowingSheet) {
                                   NavigationView {
                                       AudioPlay2()
                                   }
                               }
                        //                                Image("add")
                        //                                    .resizable()
                        //                                    .frame(width: 44, height: 44)
                        //                                    .clipShape(Circle())
                        //                                    .position(CGPoint(x: 40, y: 580))
                        //
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("4"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("4"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 680))
                        
                        Image("img6")
                            .resizable()
                            .frame(width: 82, height: 72)
                            .cornerRadius(20)
                            .position(CGPoint(x: 320, y: 680))
                        
                        Text("ولاء تدعوك إلى: تنفس لليلة هنيئة")
                            .position(CGPoint(x: 140, y: 670))
                        
                        //                        Image("add")
                        //                            .resizable()
                        //                            .frame(width: 44, height: 44)
                        //                            .clipShape(Circle())
                        //                            .position(CGPoint(x: 40, y: 680))
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("5"))
                            .frame(width: 450, height: 100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("5"), lineWidth: 2))
                            .position(CGPoint(x: 200, y: 780))
                        
                        Image("img7")
                            .resizable()
                            .frame(width: 82, height: 72)
                            .cornerRadius(20)
                            .position(CGPoint(x: 320, y: 780))
                        
                        Text("منيرة تدعوك إلى: تأمل للراحة الذهنية")
                            .position(CGPoint(x: 140, y: 770))
                        
                        //                                Image("add")
                        //                                    .resizable()
                        //                                    .frame(width: 44, height: 44)
                        //                                    .clipShape(Circle())
                        //                                    .position(CGPoint(x: 40, y: 780))
                        
                        
                    }
                    
                }
                }
                
                
            }
            
            
        }}}
       

       
#Preview {
    Alerts()
}

