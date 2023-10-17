//
//  OnboardingView.swift
//  lu
//
//  Created by Bayan on 26/03/1445 AH.
//

import SwiftUI

struct OnboardingView: View {
    var data : OnboardingData
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OnboardingView_Previews:PreviewProvider{
   static var previews: some View{
        OnboardingView(data: OnboardingData.list.first!)
    }
}

