//
//  RecipePageView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 10/03/2025.
//

import SwiftUI

struct RecipePageView: View {
    // link the recipe to show from parent view (the button clicked to go on the page)
    @State var recipe: Recipe
    // go retrieve its creator infos by theit UUID
    var recipeCreatorId: UUID { recipe.creatorId }
    var recipeCreator: User? {
        for user in users {
            if user.id == recipeCreatorId {
                return user
            }
        }
        return nil
    }

    // var to change number of portions (
    @State var selectedPart: RecipeEnum = .ingredients
    // var to change number of portions 
    // (we didn't have time to change, but if I can sometime, 
    // the number PortionChosen may be better to be started on the number portion chosen by the creator of the recipe)
    @State var numberPortionChosen: Int = 1
    
    var body: some View {
        ZStack {
            //BG color
            Color.white.ignoresSafeArea()

            // the page is scrollable
            ScrollView {
                
                ZStack(alignment: .top) {
                    // recipe image under the rest of the page to be able to have a rounder corner on the background of the rest
                    BackgroungImage(imageName: recipe.image)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        // function to let a space at the top before the rest to see the recipe image behind
                        RecipePageTransparentFrontBGImage(recipe: recipe)
                        
                        
                        VStack {
                            PageHeaderView(elementTitle: recipe.title, recipeCreator: recipeCreator)
                            VStack (spacing : 8) {
                                HStack(spacing: 8) {
                                    RecipePageTimeView(recipe: recipe)
                                    PageGeneralInfosView(GeneralInfoIcon: recipe.level.IconBlackWhite, GeneralInfoText: recipe.level.name)
                                    PageGeneralInfosView(GeneralInfoIcon: "fav", GeneralInfoText: "\(recipe.likes)")
                                }
                                
                                RecipeDoublePickerView(selectedPart: $selectedPart)
                                
                      
                                if selectedPart == .ingredients {
                                    PageStuffView( numberPortionChosen: $numberPortionChosen, numberPortionBase: recipe.portion, listIngredients : recipe.ingredients,
                                                   listUstensils : recipe.ustensils)
                                }
                                else {
                                    RecipePageListSteps(listSteps : recipe.steps)
                                }
                    
                            }
                        }
                        .padding(20)
                        .padding(.bottom, 20)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                }
                .padding(.top, 8)
                
            }

                        
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()

        .onAppear {
            numberPortionChosen = recipe.portion
        }
    }
}


#Preview {
    RecipePageView(recipe : recipes[1])
        .environmentObject(BaseViewModel())
}


struct BackgroungImage: View {
    var imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width, height: 250)
            .ignoresSafeArea(edges : .top)
    }
}





