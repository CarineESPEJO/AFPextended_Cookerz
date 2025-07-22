//
//  CreationNewIngredientView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 17/03/2025.
//


import SwiftUI

//view to create and add a new ingredient to the list of ingredients
struct CreationNewIngredientView: View {
    // all this var are here to be put in false when the ingredient picker or the ingredient unit picker are opened
    // it for when they are also opened to avoid them to stack on each other vertically
    @Binding var isGalleryPresented : Bool
    @Binding var isDateOrTimePickerPresented : Bool
    @Binding var isUstensilTypePickerPresented : Bool
    //to open the ingredient picker
    @Binding var isIngredientPickerPresented : Bool
    //to open the ingredient unit picker
    @Binding var isIngredientUnitPickerPresented : Bool

    //to confirm that the ingredient picker have been use at least one time before letting the user addd the ingredient
    @Binding var ingredientChosen : Bool
    
    @Binding var listIngredients : [Ingredient]
    @Binding var newIngredient : Ingredient
    @Binding var newIngredientQuantity : String
    @Binding var newIngredientUnit : IngredientUnit
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: .infinity, height: 54)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.grisBordure, lineWidth: 1))
            HStack {
                Button {
                    // open the ingredient picker and close the others front views
                    isGalleryPresented = false
                    isDateOrTimePickerPresented = false
                    isUstensilTypePickerPresented = false
                    isIngredientUnitPickerPresented = false
                    isIngredientPickerPresented = true
                }label :{
                    HStack {
                        //when the picker is not already used, the button showw "ingredient"
                        if ingredientChosen == false {
                            Text("Ingredient")
                        // and when it is, it shows the ingredient chosen to be added to the list
                        } else {
                            HStack {
                                Image(newIngredient.type.Icon)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text(newIngredient.name)
                                    .lineLimit(1) 
                                    //if the name is too long for the size of the button, it's truncated with 3 dots at the end
                                    .truncationMode(.tail)
                            }
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity)
                    .background(Color.red50)
                    .cornerRadius(100)
                }
                Spacer()
                // text field to write the quantity of the ingredient
                VStack (alignment: .trailing){
                    TextField ("Qt", text: $newIngredientQuantity)
                        .frame(height: 8)
                        .keyboardType(.numberPad)
                        // it prevents writing anything other than virgules and points digits to be able to convert the input into a positive float
                        .onChange(of: newIngredientQuantity) { quantity in
                            let filtered = quantity.filter { $0.isNumber || $0 == "." || $0 == "," }
                            if filtered != quantity {
                                newIngredientQuantity = filtered
                            }
                        }
                }
                .frame(width: 60)
                .padding()
                .background(Color.grisFond)
                .cornerRadius(10)
                
                Button {
                    // open the ingredient unit picker and close the others front views
                    isGalleryPresented = false
                    isDateOrTimePickerPresented = false
                    isUstensilTypePickerPresented = false
                    isIngredientPickerPresented = false
                    isIngredientUnitPickerPresented = true
                }label :{
                    HStack {
                        //  for the units we us their initial but the one of piece would be difficult to understand so we use its name
                        Text(newIngredientUnit != .piece ? newIngredientUnit.initial : newIngredientUnit.name )
                    }
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .background(Color.red50)
                    .cornerRadius(100)
                }
                
                
                Button{
                    //we just have to verify if the user used a least one time the ingredient picker and that the quantity is not null
                    //(as its not obligatory to change the type of the ingredient)
                    if ingredientChosen && !newIngredientQuantity.isEmpty {
                        // add this ingredient to the ingredient list
                        listIngredients.append(Ingredient(name: newIngredient.name, type: newIngredient.type, quantity: Double(newIngredientQuantity), unit : newIngredientUnit ))
                       // return the ingredient chosen to false so that the user can't add a new ingredient without using one time the ingredient picker again
                        ingredientChosen = false
                        // same but with the quantity 
                        newIngredientQuantity = ""
                    }
                    
                }label: {
                    Image("add_button")
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    RecipeCreationView()
}
