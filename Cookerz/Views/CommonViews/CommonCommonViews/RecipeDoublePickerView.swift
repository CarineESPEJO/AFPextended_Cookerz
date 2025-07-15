//
//  RecipeDoublePicker.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//

import SwiftUI

// Picker to change between the ingredients part and the steps part
struct RecipeDoublePickerView: View {
    @Binding var selectedPart : RecipeEnum
    var body: some View {
        //selectedPart is the var to change value
        Picker("Catégorie", selection: $selectedPart) {
            // text is the name on one of the parts of the picker
            // tag is the value assigned to one of the parts of the picker
            Text(RecipeEnum.ingredients.name).tag(RecipeEnum.ingredients)
            Text(RecipeEnum.instructions.name).tag(RecipeEnum.instructions)
        }
        //style of the picker
        .pickerStyle(.segmented)
        .padding(.vertical)
        .colorScheme(.light)
        
    }
}

#Preview {
    RecipePageView(recipe : recipes[15])
}
