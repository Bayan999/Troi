//
//  withApple.swift
//  lu
//
//  Created by Bayan on 01/04/1445 AH.
//


        import AuthenticationServices
        import SwiftUI

struct withApple: View {
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("email") var email: String = ""
    
    @AppStorage("firstName") var firstName: String = ""
    
    @AppStorage("lastName") var lastName: String = ""
    
    @AppStorage("userId") var userId: String = ""
    
    
    
    
    var body: some View {
        NavigationView{
            ZStack{ Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.8)
                
                Text("الدخول بإستخدام ")
                    .font(.custom("Al Bayan", size: 30))
                    .foregroundColor(.black)
                    .position(x: 100, y: -40)
                    .multilineTextAlignment(.center)
                    .frame(width: 208, height: 100)
                VStack {
                    SignInWithAppleButton(.continue) { request in
                        request.requestedScopes = [.email, .fullName]
                        
                    } onCompletion: { result in
                        switch result {
                        case .success(let auth):
                            switch auth.credential {
                            case let credential as ASAuthorizationAppleIDCredential:
                                // user id
                                let userId = credential.user
                                
                                let email = credential.email
                                let firstName = credential.fullName?.givenName
                                let lastName = credential.fullName?.familyName
                                
                                self.email = email ?? ""
                                self.userId = userId
                                self.firstName = firstName ?? ""
                                self.lastName = lastName ?? ""
                                
                                
                                
                            default:
                                break
                                
                            }
                        case .failure(let error):
                            print(error)
                        }
                    }
                    // black button
                    .signInWithAppleButtonStyle( colorScheme == .dark ? .white : .black)
                    .frame(height: 50)
                    .padding()
                    .cornerRadius(8)
                    // white button
                    .signInWithAppleButtonStyle(.white)
                    // white with border
                    .signInWithAppleButtonStyle(.whiteOutline)
                    
                }
                
                //.navigationTitle("Sign in")
                .padding()
                
            }
        }
    }
}

#Preview {
    withApple()
}

