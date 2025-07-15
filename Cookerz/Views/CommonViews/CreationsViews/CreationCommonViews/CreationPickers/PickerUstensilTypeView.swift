//
//  PickerUstensilTypeView.swift
//  Cookerz
//
//  Created by apprenant98 on 11/03/2025.
//

import SwiftUI

struct PickerUstensilTypeView: View {
    // to dismiss the picker
    @Binding var isPickerPresented : Bool
    // to confirm that an ustensil type has been chosen
    // to change the visual of the button to go to this picker 
    // and to be able to add the ustensil to the list of ustensils
    @Binding var ustensilChosen : Bool
    // var changed by picker
    @Binding var ustensilType: UstensilType
    
    var body: some View {
        VStack {
            HStack {
                Text ("Type d'ustensil")
                    .foregroundStyle(Color.black)
                Spacer()
                Button {
                    // to confirm that an ustensil type has been chosen
                    ustensilChosen = true
                    // to dismiss the picker
                    isPickerPresented = false
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
                //picker to choose the type of the ustensil to add to the list of ustensils
                Picker("Type d'ustensile", selection: $ustensilType) {
                    // a section for each element in UstensilType enum
                    ForEach(UstensilType.allCases, id: \.self) { ustensil in
                        HStack {
                            Image(ustensil.Icon)
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text(ustensil.name)
                        }
                    }
                }
                // wheel style picker (ex: https://media.idownloadblog.com/wp-content/uploads/2022/10/iOS-wheel-style-time-picker.png)
                .pickerStyle(.wheel)
            }
        }
        .padding(.horizontal, 25)
        .frame(maxHeight: 250)
        .background(Color.white)
    }
}

//#Preview {
//    RecipeCreationView(newUstensilType: .cookerMachine)
//}
