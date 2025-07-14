//
//  RecipePageListSteps.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

struct RecipePageListSteps: View {
    //does'nt call recipe, just its steps list
    var listSteps: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // for each steps
            ForEach(listSteps.indices, id: \.self) { index in
                HStack(alignment: .top) {
                    // put the index +1 because index began with 0
                    Text("\(index + 1)")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(Color.red50)
                        .cornerRadius(100)
                        .padding(.trailing, 8)
                    
                    // Show the value(string) of the step
                    Text("\(listSteps[index])")
                        .font(.PoppinsSubhead())
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true) 
                    
                    Spacer()
                }
                .padding(.vertical, 6)
            }
        }
    }
}

#Preview {
    RecipePageListSteps(listSteps: ["Preheat the oven.", "Mix the ingredients.", "Bake for 30 minutes.", "Let it cool before serving."])
}
