//
//  AtelierDoublePicker.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//

import SwiftUI

// Picker to change between the description part and the ingredients part
struct AtelierDoublePickerView: View {
    @Binding var selectedPart: AtelierEnum
    var body: some View {
        //selectedPart is the var to change value
        Picker("Catégorie", selection: $selectedPart) {
            // text is the name on one of the parts of the picker
            // tag is the value assigned to one of the parts of the picker
            Text(AtelierEnum.description.name).tag(AtelierEnum.description)
            Text(AtelierEnum.ingredients.name).tag(AtelierEnum.ingredients)
        }
        //style of the picker
        .pickerStyle(.segmented)
        .padding(.vertical)
        .colorScheme(.light)
    }
}
