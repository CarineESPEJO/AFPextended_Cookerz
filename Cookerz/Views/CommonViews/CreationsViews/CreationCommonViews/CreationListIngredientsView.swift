//
//  CreationListIngredientsView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI

//view showing the list of ingredients added to the recipe or cooking class in creation
struct CreationListIngredientsView: View {
    // binding because there is cross buttons to delete the ingredient from the list if the user made an error
    @Binding var listIngredients: [Ingredient]


    // function to show the ingredient quantity with only 2 digits after the dot
    func formatNumber(_ number: Double) -> String {
        let formattedNumber = String(format: "%.2f", number)
        //if the 2 digits after the dot are only zeros, it remove them 
        if formattedNumber.hasSuffix(".00") {
            return String(formattedNumber.prefix { $0 != "." })
        } else {
            return formattedNumber
        }
    }
    
    var body: some View {
        // list of the ingredients
        ForEach(listIngredients, id: \.self) { ingredient in
            HStack {
                Image(ingredient.type.Icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Text(ingredient.name.capitalized)
                    .font(.body)
                
                Spacer()
                
                // as the quantity and type of the ingredient to add are null in the wheel to choose it 
                // it has to verify there are not null and convert quantity into string x.xx
                if let quantity = ingredient.quantity, let unit = ingredient.unit {
                    let formattedQuantity = formatNumber(quantity)
                    //show quantity and unit of the ingredient
                    Text("\(formattedQuantity) \(unit.initial)")
                }
                
                Button {
                    // Remove the ingredient from the list
                    // search the 1st ingredient in listIngredient with same id than the item showed at this place of the ForEach
                    if let index = listIngredients.firstIndex(where: { $0.id == ingredient.id }) {
                        //remove it
                        listIngredients.remove(at: index)
                        
                    }
                } label: {
                    ButtonPortionView(textSymbol: "x")
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    RecipeCreationView()
}
