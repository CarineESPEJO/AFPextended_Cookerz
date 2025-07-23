//
//  AtelierCreationDateView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI
// visual part of the button date to open datepicker
struct AtelierCreationDateView: View {
    // used when the user has not already chosen the date.
    var atelierDateChosen : Bool
    var atelierDate: String
    
    var body: some View {
        VStack {
            Image("calendar")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(2)
            if atelierDateChosen == false {
                Text("Choisir une date")
                    .foregroundStyle(.black)
            } else {
                Text(atelierDate)
                    .foregroundStyle(.black)
                    .font(.PoppinsSubhead())
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(Color.red50)
        .cornerRadius(16)
    }
}
