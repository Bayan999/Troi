//
//  otp.swift
//  lu
//
//  Created by Bayan on 27/03/1445 AH.
//

import SwiftUI

struct otp: View {
   
       
            
            
            private func otpDigit(at index: Int) -> Binding<String> {
                Binding<String>(
                    get: {
                        let otpArray = Array(otp)
                        if index < otpArray.count {
                            return String(otpArray[index])
                        }
                        return ""
                    },
                    set: { newValue in
                        var otpArray = Array(otp)
                        if index < otpArray.count {
                            otpArray[index] = Character(newValue)
                            otp = String(otpArray)
                        }
                    }
                )
            }
            
            @State private var otp = "" // State variable to store OTP
            
            var body: some View {
                VStack {
                    Text("ادخل رمز التحقق")
                        .font(.custom("Al Bayan", size: 30))
                        .foregroundColor(.black)
                        .frame(width: 208, height: 100)
                        .offset(x: 0, y: 100)
                    
        //
                    
                    HStack(spacing: 10) {
                        ForEach(0..<4, id: \.self) { index in
                            OTPDigitView(digit: otpDigit(at: index))
                        }
                    }
                    
                    .padding(.horizontal)
                    .offset(x: 0, y: 100)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("2"))
                            .frame(width: 295, height: 45)
                            .shadow(radius: 2)
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Text("تحقق")
                                .font(.custom("Al Bayan", size: 25))
                                .foregroundColor(.black)
                        }
                        .frame(width: 295.0, height: 45.0)
                        .contentShape(Rectangle()) // Set the content shape of the button
                        
                        .onTapGesture {
                            // Action to perform when any part of the button is tapped
                        }
                    }
                    .offset(x: 0, y: 250)
                    
                    Button("إعادة إرسال الرمز") {
                        // Resend code action
                    }
                    .font(.custom("Al Bayan", size: 20))
                    .foregroundColor(.black)
                    .offset(x: 0, y: 60)
                    
                    Spacer()
                    
                    
                    
                //.padding(.top, 20)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("1").ignoresSafeArea())
                
            }
            
            // Function to return OTP digit at the given index
            private func otpDigit(at index: Int) -> String {
                let otpArray = Array(otp)
                if index < otpArray.count {
                    return String(otpArray[index])
                }
                return ""
            }
        }
        struct OTPDigitView: View {
            @Binding var digit: String
            @FocusState private var isFocused: Bool
            @Environment(\.scenePhase) private var scenePhase

            var body: some View {
                TextField("", text: $digit)
                    .frame(width: 50, height: 50)
                    .font(.title)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("2"), lineWidth: 2)
                    )
                    .onReceive(NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification)) { _ in
                        if digit.count == 1 {
                            DispatchQueue.main.async {
                                isFocused = false
                                NotificationCenter.default.post(name: UIResponder.keyboardWillHideNotification, object: nil)
                                isFocused = true
                            }
                        }
                    }
                    .focused($isFocused)
                    .onChange(of: digit, initial: false) { oldValue, newValue in
                        // Perform the desired action when the value of `digit` changes
                    }
            }
        }
     


#Preview {
    otp()
}

