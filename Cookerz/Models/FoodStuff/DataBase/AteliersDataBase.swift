//
//  AteliersDataBase.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 09/03/2025.
// extension made by Carine ESPEJO
// database made by other members of the group
//

//i make this extension to transform our own made dates four our ownmade database to transform them from string to real Dates and Dates to Strings in the form we want
//As it was much higher than my competence, I had lot of help from my teachers and internet
import Foundation

// Extensions let add new functionality (ex: methods here) to an existing type without subclassing.
extension Date {
    // Create a Date from a string with a specified format, "yyyy-MM-dd is default format
    //Returns an optional Date because a conversion can't be if there is no date
    static func from(string: String, format: String = "yyyy-MM-dd") -> Date? {
        // create instance of DateFormatter which is a class to convert between Date and string
        let formatter = DateFormatter()
        // Sets the formatter's dateFormat property to the provided format string, so it knows how to interpret the input string.
        formatter.dateFormat = format
        //Try to create a Date from the string using the formatter. Returns the Date if successful, or nil if the string doesn't match the format.
        return formatter.date(from: string)
    }

    // Convert Date to String with optional time formatting
    // Here we say if its include time or not and give also the language of the string because
    func toString(format: String = "EEEE, d MMM yyyy", includeTime: Bool = false, locale: String = "fr_FR") -> String {
        // create instance of DateFormatter
        let formatter = DateFormatter()
        //Sets the locale of the formatter
        //it's about how month names, day names, and other locale-specific elements are displayed (ex:"lundi" in French)
        formatter.locale = Locale(identifier: locale)

        // Base format without time
        var finalFormat = format

        // Add time to the format if includeTime is true
        if includeTime {
            finalFormat += " HH:mm"
        }

        // Set the date format
        formatter.dateFormat = finalFormat
         //Try to create a string  from the Date using the formatter.
        return formatter.string(from: self)
    }
}

// I didn't make this database

var ateliers: [Atelier] = [
    Atelier(
        creatorId: users[1].id,
        title: "Utiliser une poche à douille",
        image: "live3",
        date: Date.from(string: "2025-03-09 14:30") ?? Date(),  // Directement la date formatée
        portion: 6,
        level: .hard,
        description: "Vous allez apprendre tout sur la poche à douille, de la création, au remplissage, aux différentes douilles jusqu'aux mouvements de la main. \n \nPendant la 1ère heure, nous nous occuperons de la mixture donc si vous préférez en acheter une préfaite ou que vous n'avez pas le temps, n'hésitez pas! \n Vous pouvez aussi la préparer le veille et la congeler jusqu'à l'occasion, la recette est sur mon profil.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 20),

    Atelier(
        creatorId: users[2].id,
        title: "Fais tes pâtes maison !",
        image: "live1",
        date: Date.from(string: "2025-03-09 16:30") ?? Date(),  // Directement la date formatée
        portion: 6,
        level: .medium,
        description: "Apprends à réaliser des pâtes fraîches maison, des tagliatelles aux raviolis, avec des sauces authentiques italiennes.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 10),
    Atelier(
        creatorId: users[3].id,
        title: "Brunch healthy",
        image: "live3",
        date: Date.from(string: "2025-03-09 17:30") ?? Date(),  // Directement la date formatée
        portion: 6,
        level: .easy,
        description: "Un atelier idéal pour apprendre à préparer un brunch gourmand et équilibré avec des smoothie bowls et des pancakes moelleux.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 5),
    Atelier(
        creatorId: users[1].id,
        title: "Cuisine Asiatiques Fusion",
        image: "live1",
        date: Date.from(string: "2025-03-20 18:45") ?? Date(),
        portion : 6,
        level: .hard,
        description: "Un atelier où l'on explore des saveurs asiatiques fusionnées avec des techniques modernes, avec des plats comme des sushis revisités ou des bao buns gourmands.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 6),
    Atelier(
        creatorId: users[2].id,
        title: "Pâtisserie Vegan",
        image: "livepatisserievegan",
        date: Date.from(string: "2025-03-15 20:15") ?? Date(),
        portion: 6,
        level: .medium,
        description: "Un atelier pour découvrir des alternatives végétales dans la pâtisserie, avec des recettes de gâteaux, cookies et tartes sans produits d'origine animale.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 8),
    Atelier(
        creatorId: users[5].id,
        title: "Cuisine Méditerranéenne",
        image: "live1",
        date: Date.from(string: "2025-04-02 21:15") ?? Date(),
        portion: 6,
        level: .medium,
        description: "Un atelier pour découvrir la richesse des saveurs méditerranéennes, avec des recettes comme le couscous, les taboulés et des légumes grillés aux herbes.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 8),
    Atelier(
        creatorId: users[4].id,
        title: "Les Bases de la Cuisine Française",
        image: "live3",
        date: Date.from(string: "2025-03-25 10:30") ?? Date(),
        portion: 6,
        level: .easy,
        description: "Apprenez les classiques de la cuisine française, de la quiche Lorraine aux croissants maison, pour maîtriser les bases et épater vos invités.",
        ingredients: atelier0Ingredients,
        ustensils: atelierOUstensils,
        usersRegistered: [],
        nbSeats: 10)
]
