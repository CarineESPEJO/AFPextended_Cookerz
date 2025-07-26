//
//  RecipeCreationView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 14/03/2025.
//


import SwiftUI

struct RecipeCreationView: View {
    //call the environnement to close the recipe creation view
    @Environment(\.presentationMode) private var presentationMode

    // call the view model linked to the recipe creation view
    @EnvironmentObject var baseViewModel : BaseViewModel

    // to call the diffferent pickers to choose the elements to create the recipe  (date, ingredients and their unit, ustensil type,...)
    @State private var isTimePickerPresented = false
    @State private var isIngredientPickerPresented = false
    @State private var isIngredientUnitPickerPresented = false
    @State private var isUstensilTypePickerPresented = false
    @State var isGalleryPresented = false

    // var to verify that the picker ingredient was use at least once before adding the new ingredient 
    // (reset after an ingredient was added to the ingredients list)
    @State private var ingredientChosen: Bool = false
    //same but with the ustensils
    @State private var ustensilChosen: Bool = false
    
    
    
    
    
    var body: some View {
        // aligment bottom so that the pickers appear at the botttom of the screen
        ZStack(alignment: .bottom) {
            Color.white.ignoresSafeArea()
            // the page wwith all the buttons to create the recipe
            ScrollView {
                ZStack(alignment: .top) {
                    // view showing the image of the recipe with a button at the center to add/change it by the galleryview
                    // the others "[...]Presented" are for puting them to false to close their respectives pickers when opening the galleryview
                    CreationImageView(isDateTimePickerPresented: $isTimePickerPresented, isIngredientPickerPresented: $isIngredientPickerPresented, isIngredientUnitPickerPresented: $isIngredientUnitPickerPresented, isUstensilTypePickerPresented: $isUstensilTypePickerPresented, isGalleryPresented: $isGalleryPresented, elementImage: $baseViewModel.recipeImage)
            
                    // rectangle to let the space to show the image before showing the rest of the page
                    //(to have rounded corners on the area where the rest are located, the image is placed behind it.)
                    VStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: UIScreen.main.bounds.width, height: 20)
                            HStack {
                                //button to close the cooking class creation page
                                PageNCreationReturnedButton()
                            }
                            .padding(.horizontal)
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: UIScreen.main.bounds.width, height: 120)
                        }
                        .padding(.horizontal, 20)
                        //part with the rounded corners
                        VStack(spacing: 8) {
                            HStack {
                                //textfield to write the name of the recipe
                                TextField("Nom de la recette", text: $baseViewModel.recipeTitle)
                                    .font(.PoppinsTitle3Medium())
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .padding(.top, 20)

                            //horizontal scroll view to choose the type of the recipe
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ForEach(RecipeType.allCases, id: \.self) { type in
                                        //each type is a button when toggled add or remove the type from the types list
                                        Button {
                                                if baseViewModel.selectedRecipeTypes.contains(type) {
                                                    baseViewModel.selectedRecipeTypes.removeAll { $0 == type }  
                                                } else {
                                                    baseViewModel.selectedRecipeTypes.append(type)  /
                                                }
                                            
                                                                }  label: {
                                            VStack {
                                                //show the icon and name of the type
                                                Image(type.icon)
                                                                            .resizable()
                                                                            .scaledToFit()
                                                                            .frame(width: 55, height: 55)
                                                                            .padding(5)
                                                                            .background(baseViewModel.selectedRecipeTypes.contains(type) ? Color.red50 : Color.clear)
                                                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                                                            .overlay(
                                                                                RoundedRectangle(cornerRadius: 12)
                                                                                    .stroke(baseViewModel.selectedRecipeTypes.contains(type) ? Color.red50 : Color.grisBordure, lineWidth: 2)
                                                                            )
                                                                        Text(type.name)
                                                                            .font(.PoppinsFootnote())
                                                                            .foregroundColor(.black)
                                                                    }
                                        }
                                    }
                                }
                                .padding(.leading, 24)
                                .padding(.top, 20)
                                .background(Color.white)
                            }
                            VStack {
                            HStack(spacing: 8) 
                                //button to open the time picker
                                Button {
                                    withAnimation {
                                        isIngredientPickerPresented = false
                                        isIngredientUnitPickerPresented = false
                                        isUstensilTypePickerPresented = false
                                        isGalleryPresented = false
                                        isTimePickerPresented = true
                                    }
                                } label: {
                                    
                                    RecipeCreationTimeView(recipeTimeHours: $baseViewModel.recipeTimeHours, recipeTimeMinutes: $baseViewModel.recipeTimeMinutes)
                                }
                                //view with the button to toggle the difficulty
                                CreationDifficultyView(elementDifficulty: $baseViewModel.recipedifficulty)
                            }
                            //button to switch between the ingredients/ustensils part & steps part
                            RecipeDoublePickerView(selectedPart: $baseViewModel.selectedPart)
                            
                            if baseViewModel.selectedPart == .ingredients {
                                
                                VStack (alignment: .leading) {
                                    
                                    HStack {
                                        Text("Ingredients")
                                            .font(.PoppinsTitle3Medium())
                                        
                                        Spacer()
                                        //button to choose the number of portions
                                        CreationPortionsView(numberPortionChosen: $baseViewModel.recipePortionNb)
                                    }
                                    //view of the ingredient list with on each row a cross button to delete it
                                    CreationListIngredientsView(listIngredients: $baseViewModel.listIngredients)
                                    //view to add an ingredient to the ingredients list
                                    CreationNewIngredientView(isGalleryPresented: $isGalleryPresented,
                                                              isDateOrTimePickerPresented: $isTimePickerPresented,
                                                              isUstensilTypePickerPresented:  $isUstensilTypePickerPresented,
                                                              isIngredientPickerPresented: $isIngredientPickerPresented,
                                                              ingredientChosen: $ingredientChosen,
                                                              listIngredients: $baseViewModel.listIngredients,
                                                              newIngredient: $baseViewModel.newIngredient,
                                                              newIngredientQuantity: $baseViewModel.newIngredientQuantity,
                                                              isIngredientUnitPickerPresented: $isIngredientUnitPickerPresented,
                                                              newIngredientUnit: $baseViewModel.newIngredientUnit)
                                    
                                    Text("Ustensiles")
                                        .font(.PoppinsTitle3Medium())
                                    
                                    //same but with the ustensils
                                    CreationListUstensilsView(listUstensils: $baseViewModel.listUstensils)
                                    CreationNewUstensilView(isGalleryPresented: $isGalleryPresented,
                                                            isDateOrTimePickerPresented: $isTimePickerPresented,
                                                            isIngredientPickerPresented: $isIngredientPickerPresented,
                                                            isIngredientUnitPickerPresented: $isIngredientUnitPickerPresented,
                                                            isUstensilTypePickerPresented: $isUstensilTypePickerPresented,
                                                            ustensilChosen: $ustensilChosen,
                                                            listUstensils: $baseViewModel.listUstensils,
                                                            newUstensilType: $baseViewModel.newUstensilType,
                                                            newUstensilName: $baseViewModel.newUstensilName)
                                }
                            } else {
                                //same but with steps
                                RecipeCreationListStepsView(listSteps: $baseViewModel.listSteps)
                                RecipeCreationNewStepView(listSteps: $baseViewModel.listSteps, newStep: $baseViewModel.newStep)
                                
                            }
                            //button to confirm the creation of the recipe
                            Button {
                                //Call the function to add the recipe to the list of recipes
                                baseViewModel.postRecipe {
                                    //dismiss the page
                                    presentationMode.wrappedValue.dismiss()
                                }
                            } label: {
                                HStack {
                                    Text("Créer ta recette")
                                        .foregroundStyle(.white)
                                        .font(.PoppinsSubheadMedium())
                                        .padding()
                                        .frame(width: 345)
                                        .frame(height: 40)
                                        .background(baseViewModel.isFormComplete ? Color.red400 : Color.gray)
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                    
                                    
                                }
                                .padding(.vertical)
                            }
                            //the button is disabled if not all the the element has been chosen or added
                            .disabled(!baseViewModel.isFormComplete)
                        }
                        .padding(20)
                        .padding(.bottom, 20)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal, 20)
                    
                    }
                    
                    .padding(.bottom, 20)
                    .cornerRadius(20)
                }
                .padding(.top, 8)
            }
        }
        //disable the standard return button
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        //for all the ones after, if their related var is true, call their picker view in front of the rest of the page
        if isTimePickerPresented {
            PickerTimeView(TimeHours: $baseViewModel.recipeTimeHours, TimeMinutes: $baseViewModel.recipeTimeMinutes, isPickerPresented: $isTimePickerPresented)
        }
        if isIngredientPickerPresented {
            PickerIngredientView(isPickerPresented: $isIngredientPickerPresented, ingredientChosen: $ingredientChosen, ingredient: $baseViewModel.newIngredient)
        }
        if isIngredientUnitPickerPresented {
            PickerIngredientUnitView(isPickerPresented: $isIngredientUnitPickerPresented, ingredientUnit: $baseViewModel.newIngredientUnit)
        }
        if isUstensilTypePickerPresented {
            PickerUstensilTypeView(isPickerPresented: $isUstensilTypePickerPresented, ustensilChosen: $ustensilChosen, ustensilType: $baseViewModel.newUstensilType)
        }
        
        if isGalleryPresented {
            CreationGalleryImageView(isGalleryPresented: $isGalleryPresented, imageChosen: $baseViewModel.recipeImage)
        }
        
        
    }
}


#Preview {
    RecipeCreationView()
        .environmentObject(BaseViewModel())
}












