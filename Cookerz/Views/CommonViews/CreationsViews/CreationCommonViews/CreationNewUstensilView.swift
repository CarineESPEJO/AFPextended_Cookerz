//
//  CreationNewUstensilView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 17/03/2025.
//


import SwiftUI

//view to create and add a new ustensil to the list of ustensils
struct CreationNewUstensilView: View {
    // all this var are here to be put in false when the ustensil type picker is opened
    @Binding var isGalleryPresented : Bool
    @Binding var isDateOrTimePickerPresented : Bool
    @Binding var isIngredientPickerPresented : Bool
    @Binding var isIngredientUnitPickerPresented : Bool

    //to open the ustensil type picker
    @Binding var isUstensilTypePickerPresented : Bool
    //to confirm that the ustensil type picker have been use at least one time before letting the user addd the ustensil
    @Binding var ustensilChosen : Bool
    
    @Binding var listUstensils : [Ustensil]
    @Binding var newUstensilType : UstensilType
    @Binding var newUstensilName : String
    
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
                    // open the ustensil type picker and close the others front views
                    isGalleryPresented = false
                    isDateOrTimePickerPresented = false
                    isIngredientPickerPresented = false
                    isIngredientUnitPickerPresented = false
                    isUstensilTypePickerPresented = true
                }label :{
                    HStack {
                        //when the picker is not already used, the button showw "ustensil"
                        if ustensilChosen == false {
                            Text("Ustensil")
                        // and when it is, it shows the ustensil type chosen to be added to the list
                        }else{
                            Image(newUstensilType.Icon)
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text(newUstensilType.name)
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .background(Color.red50)
                    .cornerRadius(100)
                }
                Spacer()
                // text field to write the name of ustensil
                // it's not obligatory but it's for when it's needed to have a specific brand
                //(ex: a cooking machine with specific programs)
                VStack (alignment: .trailing){
                    TextField ("Name", text: $newUstensilName)
                }
                .frame(height: 8)
                .padding()
                .background(Color.grisFond)
                .cornerRadius(10)
                
                Button{
                    //we just have to verify if the user used a least one time the ustensil picker
                    if ustensilChosen {
                        // add this ustensil to the ustensil list
                        listUstensils.append(Ustensil( name : newUstensilName, type: newUstensilType))
                        // return the ustensilchosen to false so that the user can't add a new ustensil without using one time the ustensil type picker again
                        ustensilChosen = false
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
