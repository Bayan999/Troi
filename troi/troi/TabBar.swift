//
//  Tabview.swift
//  lu
//
//  Created by Bayan on 27/03/1445 AH.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedTab: Tab = .home
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
      
    }
    
    var body: some View {
        
        
        
       createTabView()
    }
    
    func createTabView() -> some View {
        return TabView(selection: $selectedTab) {
           main_page()
                .tabItem {
                    Label("الرئيسيه", systemImage: "house")
                }
                .tag(Tab.home)
            
           favorite()
                .tabItem {
                    Label("التفضيلات", systemImage: "heart.fill")
                }
                .tag(Tab.heart)
            
            
            Alerts()
                .tabItem {
                    Label("التنبيهات", systemImage: "bell.fill")
                }
                .tag(Tab.bell)
            
            frends()
                .tabItem {
                    Label("الاصدقاء", systemImage: "person.2.fill")
                }
                .tag(Tab.person)
            profile()
          
                            .tabItem {
                                VStack {
                                    Image("mindfulness-6")
//                                        .resizable()
//                                        .frame(width: 22, height: 22)
//                                        .clipShape(Circle())
//                                   .cornerRadius(20)
//                                      .position(CGPoint(x:2, y: 2))
                                
                                    Text("حسابي")
                                }
                              
                }
                .tag(Tab.profill)
                
                
                
         
        }
        
        
        
      
        .accentColor(Color("3"))
        .background(Color.black)
        .cornerRadius(10)
        .padding(.bottom, -10.0)
        .ignoresSafeArea()
    }
}

struct HouseView: View {
    var body: some View {
        Text("الرئيسيه")
    }
}

struct heartView: View {
    var body: some View {
        Text("التفضيلات")
    }
}

struct bellView: View {
    var body: some View {
        Text("التنبيهات")
    }
}

struct personView: View {
    var body: some View {
        Text("الاصدقاء")
    }
}
struct ersonView: View {
    var body: some View {
        Text("الاصدقاء")
    }
}
enum Tab {
    case home
    case heart
    case bell
    case person
    case profill
   
}
        

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

#Preview {
    TabBar()
}

