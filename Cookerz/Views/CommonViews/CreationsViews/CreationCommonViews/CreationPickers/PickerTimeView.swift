//
//  PickeTimeView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 11/03/2025.
//

import SwiftUI

struct PickerTimeView: View {
    // Need hours and minutes to change them with the picker
    @Binding var TimeHours: Int
    @Binding var TimeMinutes: Int
    // to dismiss the picker
    @Binding var isPickerPresented : Bool
    var body: some View {
        VStack {
            HStack {
                Text ("Temps total")
                    .foregroundStyle(Color.black)
                Spacer()
                Button {
                    // to dismiss the picker
                    isPickerPresented.toggle()
                }label:{
                    Text("Valider")
                        .foregroundStyle(Color.blue)
                }
            }
            .padding()
            .background(Color.grisFond.opacity(0.5))
            .cornerRadius(10)
            HStack {
                Spacer()
                //picker to change the hour of recipe
                Picker("Heures", selection: $TimeHours) {
                    //the picker can from 0 to 168 hours
                    // there is a section for each hour 
                    ForEach(0...168, id: \.self) { hour in
                        Text("\(hour)")
                    }
                }
                // wheel style picker (ex: https://media.idownloadblog.com/wp-content/uploads/2022/10/iOS-wheel-style-time-picker.png)
                .pickerStyle(.wheel)
                
                // texte to separate the two wheels
                Text("h")

                //picker to change the minutes of recipe
                Picker("Minutes", selection: $TimeMinutes) {
                    ForEach(0...59, id: \.self) { minute in
                        Text("\(minute)")
                    }
                }
                .pickerStyle(.wheel)
                Text("mn")
                Spacer()
                
            }
            
            
        }
        .padding(.horizontal, 25)
        .frame(maxHeight: 250)
        .background(Color.white)
    }
}

#Preview {
    RecipeCreationView()
}
