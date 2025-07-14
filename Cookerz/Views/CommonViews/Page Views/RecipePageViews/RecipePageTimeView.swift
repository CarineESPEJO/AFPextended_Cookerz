//
//  RecipePageTimeView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

struct RecipePageTimeView : View {
    // call the recipe to retrieve its duration
    var recipe : Recipe
    var body: some View {
        VStack {
            Image("minuteur")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(2)
            // change the way to show the duration wether its more a less than a hour
            if recipe.durationHours == 0 {
                Text("\(recipe.durationMinutes) min")
            } else {
                Text("\(recipe.durationHours) h \(recipe.durationMinutes) mn")
            }
        }
        .font(.PoppinsSubhead())
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(Color.red50)
        .cornerRadius(16)
    }
}

#Preview {
    RecipePageView (recipe : recipes[0])
        .environmentObject(BaseViewModel())
}
