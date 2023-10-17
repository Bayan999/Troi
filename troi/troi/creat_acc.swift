//
//  otp.swift
//  lu
//
//  Created by Bayan on 27/03/1445 AH.
//

import SwiftUI

struct creat_acc: View {
    @State private var isShowingSheet = false
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color("1")
                    .ignoresSafeArea()
                
                
//    .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: { shouldSkipPage.toggle() }) {
//                        Text("تخطي")
//                            .foregroundColor(.black)
//                            .padding()
//                    }
//                    .fullScreenCover(isPresented: $shouldSkipPage) {
//                        TabBar()
//                    }
//                }
//            }
//
                VStack{
                    
                    
                    
//                    if shouldSkipPage {
//                        TabBar()
//                    } else {
                        
                        Text("انشاء حساب جديد")
                            .font(.custom("Al Bayan", size: 30))
                            .foregroundColor(.black)
                            .position(x: 100, y: 100)
                            .multilineTextAlignment(.center)
                            .frame(width: 208, height: 100)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.white)
                                .frame(width: 295, height: 45)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("2"), lineWidth: 2)
                                )
                            
                            TextField("اسم المستخدم ", text: .constant(""))
                                .multilineTextAlignment(.trailing) // Align the text at the beginning
                                .font(.custom("Al Bayan", size: 21))
                                .foregroundColor(.black)
                                .padding(.horizontal, 70) // Adjust the horizontal padding
                        }
                        .offset(x: 0, y: 70)
                        
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.white)
                                .frame(width: 295, height: 45)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("2"), lineWidth: 2)
                                    
                                )
                            
                            TextField("رقم الهاتف", text: .constant(""))
                                .multilineTextAlignment(.trailing)
                                .font(.custom("Al Bayan", size: 21))
                                .foregroundColor(.black)
                                .padding(.horizontal,70 )
                        }
                        .offset(x: 0, y: 70)
                        //   Spacer()
                        
                        VStack {
                            //  NavigationView {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color("2"))
                                    .frame(width: 295.0, height: 45)
                                    .shadow(radius: 2)
                                    
                                Button(action: { isShowingSheet.toggle() }) {
                                    Text("التسجيل")
                                        .font(.custom("Al Bayan", size: 25))
                                        .foregroundColor(.black)
                                        .frame(width: 280.0, height: 45.0)
                                        .background(Color("2"))
                                }
                            }
                            .sheet(isPresented: $isShowingSheet) {
                                otp()
                            }
                            //                            RoundedRectangle(cornerRadius: 10)
                            //                                .foregroundColor(Color("2"))
                            //                                .frame(width: 295, height: 45)
                            //                                .shadow(radius: 2)
                            //                            Button("التسجيل") {
                            //
                            //                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            //                            }
                            //                            .background(Color("2"))
                            //                            .font(.custom("Al Bayan", size: 25))
                            //                            .foregroundColor(.black)
                            //                            .frame(width: 295.0, height: 45.0)
                            //                        }
                            .offset(x: 0, y: 120)
                            
                            Spacer()
                            
                        }
                    }
                }
            }
            // }
            // }
            
            //    #Preview {
            //        ContentView()
        }
    }

#Preview {
    creat_acc()
}

