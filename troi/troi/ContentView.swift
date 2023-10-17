
import SwiftUI

struct ContentView: View {
    @State private var currentTab = 0
    @State var isShowingfullScreen:Bool=false
    @State var isShowingfullScreen2:Bool=false
    @State private var isShowingSheet = false
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.8)
                
                // ...
                
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: { isShowingfullScreen.toggle() }) {
                                Text("تخطي")
                                    .foregroundColor(.black)
                                    .ignoresSafeArea()
                                    .padding(.top, -10.0)
                                    .padding()
                                
                            }
                            .fullScreenCover(isPresented: $isShowingfullScreen) {
//                              //MARK: uncomment thisss
                               // TabBar()
                            }
                        }
                    }
                
                VStack {
                    
                    
                    TabView(selection: $currentTab) {
                        VStack {
                            Text("مرحبا بك")
                                .multilineTextAlignment(.center)
                                .padding(.top, 311.0)
                            
                            Text("تَرَوَّى")
                                .font(.title)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                            
                            Image("33")
                                .frame(width: 100.0, height: 100.0)
                                .padding(210.0)
                                .shadow(radius: 5)
                        }
                        .tag(0)
                        
                        VStack {
                            Text("إكتسب عقلية إيجابية")
                                .multilineTextAlignment(.center)
                                .padding(.top, 311.0)
                            Text("تغلب على التحديات")
                                .multilineTextAlignment(.center)
                            
                            Text("واستمر على التركيز على تطلعاتك")
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            Image("44")
                                .frame(width: 89.0, height: 90.0)
                                .padding(204.0)
                                .shadow(radius: 5)
                                .padding(.leading, 66.0)
                        }
                        .tag(1)
                        
                        VStack {
                            Text("صمم رحلتك")
                                .multilineTextAlignment(.center)
                                .padding(.top, 311.0)
                            Text("من خلال مشاركة بعض المعلومات عن نفسك")
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 68.0)
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color.white)
                                    .frame(width: 295, height: 45)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("2"), lineWidth: 2)
                                    )
                                
                                TextField(
                                    "الاسم", text: .constant(""))
                                
                                
                                .multilineTextAlignment(.trailing) // Align the text at the beginning
                                .font(.custom("Al Bayan", size: 21))
                                
                                .foregroundColor(.black)
                                
                                
                                .padding(.horizontal, 70) // Adjust the horizontal padding
                            }
                            .padding()
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
                                //MARK: uncomment thisss
//                                withApple()
                            }.padding(.bottom, 480.0)
                                
                                
                                //                            RoundedRectangle(cornerRadius: 10)
                                //                                .foregroundColor(Color("2"))
                                //                                .frame(width: 295, height: 45)
                                //
                                //                            Button(action: {
                                //                                currentTab = 2 // Navigate to the main page
                                //                            }) {
                                //                                Text("دخول")
                                //                                    .font(.custom("Al Bayan", size: 25))
                                //                                    .foregroundColor(.black)
                                //                            }
                                //                            .frame(width: 295.0, height: 45.0)
                                //                            .contentShape(Rectangle()) // Set the content shape of the button
                                //
                                //                            .onTapGesture {
                                //                                // Action to perform when any part of the button is tapped
                                //                            }
                                
                                
                                //                            .offset(x: 3, y: 52)
                                //                            .padding(.bottom, 480.0)
                                //
                            }  .tag(2)
                        }
                    
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        .padding(.bottom, 35.0)
                    }}
                //
                //            HStack{
                //                Spacer()
                //                Button(action: {isShowingfullScreen.toggle()}, label: {
                //                    Text("تخطي")
                //                        .foregroundColor(.black)
                //                        .padding()
                //
                //                }).fullScreenCover(isPresented: $isShowingfullScreen, content: {
                //                    TabBar()
                //                }).padding(.top, -370)
                //            }
                
                
                
                
                //                HStack {
                //                    Spacer()
                //                    Button(action: {
                //                        currentTab = 2 // Navigate to the main page
                //                    }) {
                //                        Text("تخطي")
                //                            .foregroundColor(.black)
                //                            .padding()
                //                    }
                //                    .cornerRadius(10)
                //                    .padding(.top, -360)
                //                }
                // }
            }
        }}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
