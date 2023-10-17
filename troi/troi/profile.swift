//
//  profile.swift
//  lu
//
//  Created by Bayan on 29/03/1445 AH.
//

import SwiftUI

struct profile: View {
    var body: some View {
        ZStack {
        Color("1")
        .ignoresSafeArea()
        Image("Image2")
        .resizable()
        .frame(width: 490.0, height: 400.0)
        .position(CGPoint(x: 200.0, y: 100.0))
//        Image("Image1")
//        .resizable()
//        .frame(width: 490.0, height: 400.0)
//        .position(CGPoint(x: 200.0, y: 100.0))
       
        Image("nourapic")
        .resizable()
        .frame(width: 180, height: 180)
        .clipShape(Circle())
        .padding(.bottom, 100.0)
        .position(CGPoint(x: 200.0, y: 150.0))
        Image(systemName: "pencil.circle")
        .resizable()
        .frame(width: 30, height: 30)
        .clipShape(Circle())
        .padding(.bottom, 100.0)
        .position(CGPoint(x: 295.0, y: 180.0))
        Text("نورة")
        .position(CGPoint(x: 200, y: 230))
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundColor(.black)

        Text("اسم المستخدم:")
        .fontWeight(.bold)
        .position(CGPoint(x: 300, y: 370))
        .foregroundColor(.gray)
        Text(" : USERID")
        .fontWeight(.bold)
        .position(CGPoint(x: 310, y: 480))
        .foregroundColor(.gray)
        //}
        // ZStack {
        RoundedRectangle(cornerRadius: 10)
        .foregroundColor(Color.white)
        .frame(width: 295, height: 45)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
        .stroke(Color("2"), lineWidth: 2))
        .position(CGPoint(x: 200, y: 422))
        TextField("Noura_ali", text: .constant(""))
        .multilineTextAlignment(.trailing) // Align the text at the beginning
        .font(.custom("Al Bayan", size: 21))
        .foregroundColor(.black)
        .padding(.horizontal, 70) // Adjust the horizontal padding
        .position(CGPoint(x: 200, y: 350))
        // }
        .offset(x: 0, y: 70)
        Image(systemName: "square.and.pencil")
        .position(CGPoint(x: 80, y: 420.0))
        // ZStack {
        RoundedRectangle(cornerRadius: 10)
        .foregroundColor(Color.white)
        .frame(width: 295, height: 45)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
        .stroke(Color("2"), lineWidth: 2))
        .position(CGPoint(x: 200, y: 530))
        TextField("USERID", text: .constant(""))
        .multilineTextAlignment(.trailing)
        .font(.custom("Al Bayan", size: 21))
        .foregroundColor(.black)
        .padding(.horizontal,70 )
        .position(CGPoint(x: 200, y: 430))
        // }
        .offset(x: 0, y: 100)
        Image(systemName: "square.and.pencil")
        .position(CGPoint(x: 80.0, y: 530.0))
        ZStack {
        RoundedRectangle(cornerRadius: 10)
        .foregroundColor(Color("2"))
        .frame(width: 295, height: 45)
        .shadow(radius: 1)
        Button("حفظ") {
        }
        .background(Color("2"))
        .font(.custom("Al Bayan", size: 25))
        .foregroundColor(.black)
        .frame(width: 295.0, height: 45.0)
        }
        .offset(x: 0, y: 90)
        .position(CGPoint(x: 200, y: 530))
        Spacer()
        ZStack {
        RoundedRectangle(cornerRadius: 10)
        .foregroundColor(Color("6"))
        .frame(width: 295, height: 45)
        .shadow(radius: 1)
        Button("تسجيل الخروج") {
        }
        .background(Color("6"))
        .font(.custom("Al Bayan", size: 25))
        .foregroundColor(.black)
        .frame(width: 295.0, height: 45.0)
        }
        .offset(x: 0, y: 85)
        .position(CGPoint(x: 200, y: 590))
        Spacer()
               // .padding(30)
        }
        }
        }



#Preview {
    profile()
}
