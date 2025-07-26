//
//  AtelierCreationView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 17/03/2025.
//



import SwiftUI

struct AtelierCreationView: View {
    //call the environnement to close the cooking class creation view
    @Environment(\.presentationMode) private var presentationMode

    // call the view model linked to the cooking class creation view
    @StateObject private var creationViewModel = AtelierCreationViewModel()

    // to call the diffferent pickers to choose the elements to create the cooking class (date, ingredients and their unit, ustensil type)
    @State private var isDatePickerPresented = false
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
            // the page wwith all the buttons to create the cooking class
            ScrollView {
                ZStack(alignment: .top) {
                    // view showing the image of the recipe with a button at the center to add/change it by the galleryview
                    // the others "[...]Presented" are for puting them to false to close their respectives pickers when opening the galleryview
                    ZStack {
                        CreationImageView(isDateTimePickerPresented: $isDatePickerPresented, isIngredientPickerPresented: $isIngredientPickerPresented, isIngredientUnitPickerPresented: $isIngredientUnitPickerPresented, isUstensilTypePickerPresented: $isUstensilTypePickerPresented, isGalleryPresented: $isGalleryPresented, elementImage: $creationViewModel.atelierImage)
                    }
                    // rectangle to let the space to show the image before showing the rest of the page
                    //(to have rounded corners on the area where the rest are located, the image is placed behind it.)
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
                        //part with the rounded corners
                        VStack(spacing: 8) {
                            HStack {
                                //textfield to write the name of the cooking class
                                TextField("Nom de la recette", text: $creationViewModel.atelierTitle)
                                    .font(.PoppinsTitle3Medium())
                            }
                            .padding(.vertical, 10)
                            
                            HStack(spacing: 8) {
                                //button to open the date picker
                                Button {
                                    withAnimation {
                                        isIngredientPickerPresented = false
                                        isIngredientUnitPickerPresented = false
                                        isUstensilTypePickerPresented = false
                                        isGalleryPresented = false
                                        isDatePickerPresented = true
                                    }
                                } label: {
                                    AtelierCreationDateView(atelierDateChosen: creationViewModel.atelierDateChosen, atelierDate: creationViewModel.formattedDate)
                                }
                                //view with the button to toggle the difficulty
                                CreationDifficultyView(elementDifficulty: $creationViewModel.atelierDifficulty)
                            }
                            //button to switch between the desciption part & the ingredients/ustensils part
                            AtelierDoublePickerView(selectedPart: $creationViewModel.selectedPart)
                            
                            if creationViewModel.selectedPart == .description {
                                ZStack(alignment: .topLeading) {
                                    //text editor to qwrite the description of the cooking class
                                    TextEditor(text: $creationViewModel.atelierDescription)
                                        .font(.caption)
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8.0)
                                                .stroke(.grisBordure, lineWidth: 2))
                                        .colorScheme(.light)

                                    // text as placeholder
                                    if creationViewModel.atelierDescription.isEmpty {
                                        Text("Ajouter une description")
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                            .padding([.top, .leading], 8)
                                    }
                                }
                                .frame(width: .infinity, height: 250)
                                .padding(.horizontal, 8)
                                .cornerRadius(8)
                                
                            }else  {
                                VStack (alignment: .leading) {
                                    HStack {
                                        Text("Ingredients")
                                            .font(.PoppinsTitle3Medium())
                                        
                                        Spacer()
                                    }
                                    //view of the ingredient list with on each row a cross button to delete it
                                    CreationListIngredientsView(listIngredients: $creationViewModel.listIngredients)
                                    //view to add an ingredient to the ingredients list
                                    CreationNewIngredientView(isGalleryPresented: $isGalleryPresented,
                                                              isDateOrTimePickerPresented: $isDatePickerPresented,
                                                              isUstensilTypePickerPresented:  $isUstensilTypePickerPresented,
                                                              isIngredientPickerPresented: $isIngredientPickerPresented,
                                                              ingredientChosen: $ingredientChosen,
                                                              listIngredients: $creationViewModel.listIngredients,
                                                              newIngredient: $creationViewModel.newIngredient,
                                                              newIngredientQuantity: $creationViewModel.newIngredientQuantity,
                                                              isIngredientUnitPickerPresented: $isIngredientUnitPickerPresented,
                                                              newIngredientUnit: $creationViewModel.newIngredientUnit)
                                    
                                    Text("Ustensiles")
                                        .font(.PoppinsTitle3Medium())
                                    //same but with the ustensils
                                    CreationListUstensilsView(listUstensils: $creationViewModel.listUstensils)
                                    CreationNewUstensilView(isGalleryPresented: $isGalleryPresented,
                                                            isDateOrTimePickerPresented: $isDatePickerPresented,
                                                            isIngredientPickerPresented: $isIngredientPickerPresented,
                                                            isIngredientUnitPickerPresented: $isIngredientUnitPickerPresented,
                                                            isUstensilTypePickerPresented: $isUstensilTypePickerPresented,
                                                            ustensilChosen: $ustensilChosen,
                                                            listUstensils: $creationViewModel.listUstensils,
                                                            newUstensilType: $creationViewModel.newUstensilType,
                                                            newUstensilName: $creationViewModel.newUstensilName)
                                }
                            }
                            //button to confirm the creation of the cooking class
                            Button {
                                //Call the function to add the cooking class to the list of cooking classes
                                creationViewModel.postAtelier() {
                                    //dismiss the page
                                    presentationMode.wrappedValue.dismiss()
                                }
                            } label: {
                                HStack {
                                        Text("Créer ton atelier")
                                            .foregroundStyle(.white)
                                            .font(.PoppinsSubheadMedium())
                                            .padding()
                                            .frame(width: 345)
                                            .frame(height: 40)
                                            .background(creationViewModel.isFormComplete ? Color.red400 : Color.gray)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                    
                                        
                                }
                                .padding(.vertical)
                            }
                            //the button is disabled if not all the the element has been chosen or added
                            .disabled(!creationViewModel.isFormComplete)
                        }
                        .padding(20)
                        .padding(.bottom, 20)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                    .padding(20)
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
        if isDatePickerPresented {
            AtelierPickerDateView(atelierDateChosen: $creationViewModel.atelierDateChosen, isPickerPresented: $isDatePickerPresented, atelierDate: $creationViewModel.atelierDate)
        }
        if isIngredientPickerPresented {
            PickerIngredientView(isPickerPresented: $isIngredientPickerPresented, ingredientChosen: $ingredientChosen, ingredient: $creationViewModel.newIngredient)
        }
        if isIngredientUnitPickerPresented {
            PickerIngredientUnitView(isPickerPresented: $isIngredientUnitPickerPresented, ingredientUnit: $creationViewModel.newIngredientUnit)
        }
        if isUstensilTypePickerPresented {
            PickerUstensilTypeView(isPickerPresented: $isUstensilTypePickerPresented, ustensilChosen: $ustensilChosen, ustensilType: $creationViewModel.newUstensilType)
        }
        if isGalleryPresented {
            CreationGalleryImageView(isGalleryPresented: $isGalleryPresented, imageChosen: $creationViewModel.atelierImage)
        }
    }
}

#Preview {
    AtelierCreationView()
}


