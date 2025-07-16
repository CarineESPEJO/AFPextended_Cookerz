//
//  PageListIngredientsView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 11/03/2025.
//

import SwiftUI

struct PageListIngredientsView: View {
    // list of ingredients
    var listIngredient: [Ingredient]
    //number of portion put by the creator to do conversions
    var portion : Int
    // Binding to change the number of portions
    @Binding var numberPortionChosen : Int

    // function to show the ingredient quantity with only 2 digits after the dot
    // its because if by changing the number of portions, the quantity of the ingredients goes more than 2 digit aftyer the dot 
    func formatNumber(_ number: Double) -> String {
      
        let formattedNumber = String(format: "%.2f", number)
        
         //if the 2 digits after the dot are only zeros, it remove them 
        if formattedNumber.hasSuffix(".00") {
            return String(formattedNumber.prefix { $0 != "." })
        } else {
            return formattedNumber
        }
    }

    //function to modify the quantity of the ingredients based on the number of portions
    func calculateAdjustedQuantity(for ingredient: Ingredient) -> String {
        // as ingredient as quantity and unit whith ? (can be null) for the creation
        // its for bypass it by verifying that they are non-null 
        //(can't be null because recipes and cooking classes can't be confirmed if one is null)
        if let quantity = ingredient.quantity, let unit = ingredient.unit {
            // create variable adapted by the portion chosen by the user 
            // its quantity for one portion multiplied by the number chosen
            let adjustedQuantity = quantity * Double(numberPortionChosen) / Double(portion)
            // Format this new quantity as x.xx.
            let formattedQuantity = formatNumber(adjustedQuantity)
            return "\(formattedQuantity) \(unit.initial)"
        }
        return ""
    }
    
    var body: some View {
        ForEach(listIngredient) { ingredient in
            HStack {
                // icon of the type of the ingredient
                Image(ingredient.type.Icon)
                    .resizable()
                    .frame(width: 24, height: 24)

                //name formatted in capital and then in lowercase
                Text(ingredient.name.capitalized)
                    .font(.PoppinsCallout())
                
                Spacer()
                // quantity based on the number of portions
                Text(calculateAdjustedQuantity(for: ingredient))
                    .font(.PoppinsSubhead())
                    .foregroundStyle(.black.opacity(0.7))
            }
        }
    }
}


#Preview {
    //    PageHeaderView(elementTitle: recipes[0].title, recipeCreator: users[0])
    RecipePageView (recipe : recipes[0])
}
