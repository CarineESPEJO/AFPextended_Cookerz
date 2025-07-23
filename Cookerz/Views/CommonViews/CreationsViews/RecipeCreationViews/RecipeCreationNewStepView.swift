//
//  RecipeCreationNewStepView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI

struct RecipeCreationNewStepView: View {
    // var list of steps where will be added the new step
    @Binding var listSteps: [String]
    //var to contains the new step
    @Binding var newStep: String
    var body: some View {
        HStack {
            // button to add the new step
            Button {
                //if the textield is empty it can't add it to the list, else it can
                if !newStep.isEmpty {
                    listSteps.append(newStep)
                    // reset textfield
                    newStep = ""
                }
            } label: {
                Image("add_button")
            }
            
            ZStack(alignment: .topLeading) {
                //textfield to write the step
                TextEditor(text: $newStep)
                    .font(.caption)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(               // border rounded
                        RoundedRectangle(cornerRadius: 8.0)
                            .stroke(.grisBordure, lineWidth: 2))
                    .colorScheme(.light)    // we can't change the background color as usual, we can just switch that between light and dark
                //placeholder
                if newStep.isEmpty {
                    Text("Ajouter une étape")
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding([.top, .leading], 8)
                }
            }
            .frame(width: .infinity, height: 150)
            .padding(.horizontal, 8)
            .cornerRadius(8)
            
        }
    }
}

#Preview {
    RecipeCreationView()
}
