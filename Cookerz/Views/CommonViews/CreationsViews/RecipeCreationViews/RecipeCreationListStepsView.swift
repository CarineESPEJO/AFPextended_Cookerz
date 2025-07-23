//
//  RecipeCreationListStepsView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI

struct RecipeCreationListStepsView: View {
    @Binding var listSteps: [String]

    // view to show the list of steps of the recipe in creation
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(listSteps, id: \.self) { step in
                HStack {
                    HStack {
                        // show the index of the step + 1 because it began at 0
                        Text("\(listSteps.firstIndex(of: step)! + 1)")
                            .font(.PoppinsSubhead())
                    }
                    .frame(width: 30, height: 30)
                    .background(Color.red50)
                    .cornerRadius(100)
                    
                    // the text of step
                    Text(step)
                        .font(.PoppinsFootnote())
                    
                    Spacer()

                    // a cross button to delete the step
                    Button {
                        // it search the index of the step
                        if let index = listSteps.firstIndex(of: step) {
                            //and use it to delete this step
                            // (as it doesnt exist anymore, it doesn't show now on the list)
                            listSteps.remove(at: index)
                            
                        }
                    } label: {
                        ButtonPortionView(textSymbol: "x")
                    }
                }
                .padding(.horizontal, 8)
                .padding(.vertical)
            }
        }
    }
}
