//
//  ListUstensilsView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 11/03/2025.
//

import SwiftUI

struct ListUstensilsView: View {
    // list of Ustensils
    var listUstensils : [Ustensil] = []
    var body: some View {
        ForEach(listUstensils) { ustensil in
            HStack {
                // icon of the type of the ustensil
                Image(ustensil.type.Icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                 // ustensil type name
                Text(ustensil.type.name)
                    .font(.PoppinsCallout())
                Spacer()
                //name formatted in capital and then in lowercase
                // ?? is for if there is no name for the ustensil (juste a type)
                // ex : cooking machine is the type, Vorwerk Thermomix TM6 is the name (we can also just use any cooking machine)
                Text(ustensil.name.capitalized ?? "")
                    .font(.PoppinsSubhead())
                    .foregroundStyle(.black.opacity(0.7))
                
            }
        }
    }
}


#Preview {
    RecipePageView (recipe : recipes[0])
}
