//
//  PickerIngredientView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 12/03/2025.
//

import SwiftUI

struct PickerIngredientView: View {
    // to dismiss the picker
    @Binding var isPickerPresented : Bool
    // to confirm that an ingredient type has been chosen
    // to change the visual of the button to go to this picker 
    // and to be able to add the ingredient to the list of ustensils
    @Binding var ingredientChosen : Bool
    
    // var changed by picker
    @Binding var ingredient : Ingredient
    // var to choose a type in the left wheel and adapt the right wheel to show only the elements with this type
    @State var ingredientType : IngredientType = .fruit
    
    var body: some View {
        VStack {
            HStack {
                Text ("Choix d'ingrédient")
                    .foregroundStyle(Color.black)
                Spacer()
                Button {
                    // to confirm that an ingredient has been chosen
                    ingredientChosen = true
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
                //picker to choose the type of the ingredient
                //this picker change  the value of ingredientType to use to filter the right wheel
                Picker("Type d'ingredient", selection: $ingredientType) {
                    ForEach(IngredientType.allCases, id: \.self) { ingredient in
                        HStack {
                            Image(ingredient.Icon)
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text(ingredient.name)
                        }
                    }
                }
                // wheel style picker (ex: https://media.idownloadblog.com/wp-content/uploads/2022/10/iOS-wheel-style-time-picker.png)
                .pickerStyle(.wheel)
                
                Spacer()
                //picker to choose the ingredient to add to the list of ingredients
                //(use ingredientType modified in the left wheel to group its ingredients in smaller categories instead of showing all of them at the same time)
                // this picker change  the value of th ingredient we want to add 
                Picker("Choix d'ingrédient", selection: $ingredient) {
                    // it's shows all the ingredients whose type is the one chosen in the left wheel
                    //It gives the effect that we go into an type ingredient group where there are the ingredients of this type group
                    ForEach(ingredientsBase.filter { $0.type == ingredientType }, id: \.self) { ingredient in
                        HStack {
                            Text(ingredient.name)
                                .font(.PoppinsCaption2Medium())
                        }
                    }
                }
                .pickerStyle(.wheel)
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

