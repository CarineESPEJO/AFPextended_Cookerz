//
//  CreationListUstensilsView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI

//view showing the list of ustensils added to the recipe or cooking class in creation
struct CreationListUstensilsView: View {
    @Binding var listUstensils: [Ustensil]

    // here its not needed but I forgot to delete it, I will do it when I will rework on this poject
    // (I prefer doing it where I can it won't break the rest of the code instead of just deleting here 
    func formatNumber(_ number: Double) -> String {
        let formattedNumber = String(format: "%.2f", number)
        
        if formattedNumber.hasSuffix(".00") {
            return String(formattedNumber.prefix { $0 != "." })
        } else {
            return formattedNumber
        }
    }
    
    var body: some View {
        // list of ustensils
        ForEach(listUstensils, id: \.self) { ustensil in
            HStack {
                Image(ustensil.type.Icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Text(ustensil.type.name.capitalized)
                    .font(.body)
                
                Spacer()
                
                Text(ustensil.name)
                    .font(.body)
                
                Spacer()
                
                
                Button {
                    // remove the iustensils from the list
                    if let index = listUstensils.firstIndex(where: { $0.id == ustensil.id }) {
                        listUstensils.remove(at: index)
                        
                    }
                } label: {
                    ButtonPortionView(textSymbol: "x")
                }
            }
            .padding(.horizontal, 8)
        }
    }
}
