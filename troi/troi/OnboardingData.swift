//
//  OnboardingaData.swift
//  lu
//
//  Created by Bayan on 26/03/1445 AH.
//



import Foundation
struct OnboardingData :Hashable,Identifiable{
    let id: Int
    static let list:[OnboardingData]=[
        OnboardingData(id: 0),
        OnboardingData(id: 1),
        OnboardingData(id: 2)]
    
    
}



