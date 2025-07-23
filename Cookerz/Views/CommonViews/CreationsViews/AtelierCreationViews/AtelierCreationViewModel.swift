//
//  AtelierCreationViewModel.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 17/03/2025.
//


// Here the creation cooking class part I made that we to leave here
// Someone else was chosen to take care of the model view part. However, instead of creating several model views, they only made one.
// Linking between certain parts of the back-end code was difficult due to that, and we had to adapt as much as we could at the end to make it work. 
// Thus, the back-end of recipe creation is located in the model view, but the one of the live creation is on this separate page.
import Foundation

class AtelierCreationViewModel: ObservableObject {
    // var to change between the 2 parts of the creation page
    @Published var selectedPart: AtelierEnum = .description

    // variables needed to create a recipe
    @Published var atelierTitle: String = ""
    // it can be null because there is no value before the user choose a picture for the recipe
    @Published var atelierImage: String? = nil

    //to verify that the user has at least used the date picker once to choose a date before confirming the creation of the cooking class
    @Published var atelierDateChosen : Bool = false
    @Published var atelierDate: Date = Date()
    
    @Published var atelierDifficulty: Level = .defaultdifficulty
    @Published var atelierPortionNb: Int = 1

    // var to contain the cooking class ingredients list
    @Published var listIngredients: [Ingredient] = []
    // var to choose a new ingredient before adding it to the recipe ingredient list
    @Published var newIngredient: Ingredient = ingredientsBase[0]
    // Same bur it's quantity and unit
    @Published var newIngredientQuantity: String = ""
    @Published var newIngredientUnit: IngredientUnit = .gramme

    // same with the recipe ustensils list
    @Published var listUstensils: [Ustensil] = []
    @Published var newUstensilType: UstensilType = .cookerMachine
    @Published var newUstensilName: String = ""

    @Published var atelierDescription: String = ""
    
    // var to let the user to confirm the creation of the page only when it enter each fields : 
    // add an image, a name, a date, a difficulty, a description and at least one ingredient or one ustensil
    // (one ingredient or ustensil because the cooking class can be for example on a recipe or to learn how to use an ustensil)
    var isFormComplete: Bool {
        return atelierImage != nil
        && !atelierTitle.isEmpty
        && atelierDateChosen == true
        && atelierDifficulty != .defaultdifficulty
        && !atelierDescription.isEmpty
        && (!listIngredients.isEmpty || !listUstensils.isEmpty)
    }

    // function to add an ingredient to the list of ingredients
    func addIngredient() {
        // Verify if the quantity has been added and convert it into a double to be modified when changing the number of portions on the recipe page.
        if let quantity = Double(newIngredientQuantity), !newIngredientQuantity.isEmpty {
            // add ingredient to the the list of ingredients (name,type,quantity,unit)
            listIngredients.append(Ingredient(name: newIngredient.name, type: newIngredient.type, quantity: quantity, unit: newIngredientUnit))
             //reset the quantity to none to add new ingredient
            newIngredientQuantity = ""
        }
    }

    //function to remove an ingredient from the ingredients list
    func removeIngredient(at index: Int) {
        listIngredients.remove(at: index)
    }

    // func to create the cooking class
    func postAtelier(dismiss: @escaping () -> Void) {
        // create a var which take  all the fields info
        let newAtelier = Atelier(
            creatorId: UUID(),
            title: atelierTitle,
            image: atelierImage!,
            date: atelierDate,
            portion : atelierPortionNb,
            level: atelierDifficulty,
            description: atelierDescription,
            ingredients: listIngredients,
            ustensils: listUstensils,
            usersRegistered: [users[0].id],
            nbSeats: 10
        )
         // add to the list of recipes recipesVM the var above
        ateliers.insert(newAtelier, at : 0)
        // just to verify that the recipe has been added correctly
        print(ateliers)
        // close the recipe creation page
        dismiss()
    }

    // transform the string date into a real date
    var formattedDate: String {
        // creates new instance of DateFormatter
        let dateFormatter = DateFormatter()
        // sets the desired date format
        dateFormatter.dateFormat = "d/MM - HH:mm"
        // return the date string transformed into a real date
        return dateFormatter.string(from: atelierDate)
    }
}
