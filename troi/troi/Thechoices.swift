//
//  Thechoices.swift
//  lu
//
//  Created by Bayan on 29/03/1445 AH.
//

import SwiftUI

struct Thechoices: View {
    
    //
    
    @State private var searchTerm = ""
    @State private var currentTab = 0
    @State private var shouldskipPage = false
    
    var vids = [
        Vid(name: "تنفس لتفريغ التوتر", image: "img2", description: "برودكاست يساعد على تفريغ التوتر", heart: "heart.fill"),
        Vid(name: "تنفس لتحفيز التركيز", image: "img3", description: "برودكاست يساعد على التركيز", heart: "heart"),
        Vid(name: "تنفيس للوصول للسكينة والاسترخاء", image: "img4", description: "برودكاست يساعد على السكينة والاسترخاء", heart: "heart"),
        Vid(name: "التنفس بعمق", image: "img5", description: "برودكاست يساعد على التنفس العميق", heart: "heart.fill")
    ]
    
    var body: some View {
      //  NavigationStack{
            ZStack {
                Image("background2")
                    .resizable()
                    .frame(width: 400, height: 900)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.8)
                
                VStack {
                    Text("تصفح التنفس")
                        .font(.title)
                        .fontWeight(.light)
                        .padding(.bottom, 165.0)
                        .offset(x: 0, y: 140)
                    
                    Spacer()
                    Text("\(searchTerm)")
                        .searchable(text: $searchTerm, prompt: "بحث")
                        .foregroundColor(.white)
                    List {
                        
                        ForEach(vids, id: \.name) { vid in
                            NavigationLink(destination: AudioPlay1()) {
                                HStack {
                                    Image(systemName: vid.heart)
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("3"))
                                    Spacer()
                                    VStack(alignment: .center) {
                                        Text(vid.name)
                                            .font(.headline)
                                            .padding()
                                        Text(vid.description)
                                            .font(.caption2)
                                    }
                                    Image(vid.image)
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(6)
                                }
                            }
                        }
                        .listRowBackground(Color("11"))
                    }                        .listStyle(.plain)
                    
                    
                }
                .padding(.top, 10.0)
            }
            
        }
}
    struct Vid {
        var name: String
        var image: String
        var description: String
        var heart: String
    }
//
//    struct Thechoices_Previews: PreviewProvider {
//        static var previews: some View {
//            Thechoices()
//        }
//    }
#Preview {
    Thechoices()
}

