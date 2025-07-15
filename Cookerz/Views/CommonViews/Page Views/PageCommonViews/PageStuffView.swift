//
//  PageStuffView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

struct PageStuffView: View {
    // Binding to change the number of portions
    @Binding var numberPortionChosen : Int
    //number of portion put by the creator to do conversions
    var numberPortionBase : Int
    //to show the lists
    var listIngredients : [Ingredient]
    var listUstensils : [Ustensil]
    
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text("Ingrédients")
                Spacer()
                //Button to change the number of portions
                PortionsView(numberPortionChosen: $numberPortionChosen)
            }

            PageListIngredientsView(listIngredient: listIngredients , portion: numberPortionBase, numberPortionChosen: $numberPortionChosen )
            
            VStack {
                Text("Ustensiles")
            }
            .padding(.top)
            
            
            ListUstensilsView(listUstensils: listUstensils)
        }
        .font(.PoppinsTitle3Medium())
    }
}


#Preview {
    RecipePageView(recipe : recipes[0])
}


