//
//  RecipePageTransparentFrontBGImage.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//

import SwiftUI

struct RecipePageTransparentFrontBGImage: View {
    //it need to have the recipe for the var isFavorite
    var recipe : Recipe
    @EnvironmentObject var baseViewModel: BaseViewModel
    // var toggle of isLiked part of the recipe for the visual
    var isFavorite: Bool {
        //tries to find the index of a recipe int the user's recipe list.
        //if let index = ... is optional binding—it checks if such a recipe exists. If yes, it safely unwraps and assigns the index to index.
        //by using .firstIndex(where:) to looks for the first recipe where the id matches the id of the current recipe.
        //$0 represents each recipe in the list during the search.
        if let index = baseViewModel.user.listRecipes.firstIndex(where: { $0.id == recipe.id}) {
        // If the recipe was found in the user's list, this returns whether that recipe is marked as liked (bool)
            return baseViewModel.user.listRecipes[index].isLiked
        } else {
            // If the recipe was not found, It simply returns false because the recipe is not a favorite
            return false
        }
    }

    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.clear)
                .frame(width: UIScreen.main.bounds.width, height: 20)
            HStack {
                //custom return button (the normal one is hidden in recipepageview)
                PageNCreationReturnedButton()
                
                Spacer()
                Button {
                    // call a function to toggle the isFavorite of the recipe
                    baseViewModel.toggleFavoriteRecipe(recipe: recipe)
                } label : {
                    HStack {
                        // verify if isFavorite is true or false to change visual
                        if isFavorite {
                            Image("fav_fill")
                                .foregroundStyle(.black)
                        }else {
                            Image("fav")
                                .foregroundStyle(.black)
                        }
                    }
                    .padding()
                    .background(Color.white.opacity(0.75))
                    .cornerRadius(100)
                }
                
            }
            .padding(.horizontal)
            .padding(.trailing)
            
            Rectangle()
                .fill(Color.clear)
                .frame(width: UIScreen.main.bounds.width, height: 120)
        }
        .padding(.top, 34)
    }
}

#Preview {
    RecipePageView (recipe : recipes[0])
        .environmentObject(BaseViewModel())
}


// customed return button
struct PageNCreationReturnedButton: View {
    //access the presentation mode of the current view(here used to dismiss from the nav and go back)
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button {
            //dismiss the page to go back on the parent
            presentationMode.wrappedValue.dismiss()
        }label : {
            HStack {
                Text("< Retour")
            }
            .padding()
            .background(Color.white.opacity(0.75))
            .foregroundColor(.black)
            .cornerRadius(50)
        }
    }
}
