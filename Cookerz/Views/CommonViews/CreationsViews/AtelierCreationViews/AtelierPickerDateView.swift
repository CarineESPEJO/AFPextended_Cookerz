//
//  AtelierPickerDateView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 17/03/2025.
//


import SwiftUI

struct AtelierPickerDateView: View {
    //to confirm that the date picker have been use at least one time before the cooking class can be created
    @Binding var atelierDateChosen: Bool
    // to dismiss the picker
    @Binding var isPickerPresented: Bool
    @Binding var atelierDate : Date
    var body: some View {
        VStack {
            HStack {
                //title
                Text ("Date & horaire")
                    .foregroundStyle(Color.black)
                Spacer()
                //button to dismiss picker/validate date
                Button {
                    atelierDateChosen = true
                    print (atelierDateChosen)
                    isPickerPresented.toggle()
                } label: {
                    Text("Valider")
                        .foregroundStyle(Color.blue)
                }
            }
            .padding()
            .background(Color.grisFond.opacity(0.5))
            .cornerRadius(10)
            
            HStack {
                Spacer()
                //date picker
                DatePicker("", selection: $atelierDate, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(WheelDatePickerStyle())
                    .pickerStyle(.wheel)
            }
        }
        .padding(.horizontal, 25)
        .frame(maxHeight: 250)
        .background(Color.white)
    }
}
