//
//  PickerIngredientUnitView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 11/03/2025.
//

import SwiftUI

struct PickerIngredientUnitView: View {
    // to dismiss the picker
    @Binding var isPickerPresented : Bool
    // var changed by the picker
    @Binding var ingredientUnit: IngredientUnit
    
    var body: some View {
        VStack {
            HStack {
                Text ("Unité de mesure")
                    .foregroundStyle(Color.black)
                Spacer()
                Button {
                    // to dismiss the picker
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
                //picker to choose the type of the ustensil to add to the list of ustensils
                Picker("unité ingredient", selection: $ingredientUnit) {
                     // a section for each element in IngredientUnit enum
                    ForEach(IngredientUnit.allCases, id: \.self) { unit in
                        HStack {
                            Text(unit.name)
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
//    RecipeCreationView(newIngredientUnit: .gramme)
//}
