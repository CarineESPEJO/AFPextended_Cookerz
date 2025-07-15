//
//  AtelierPageDateView.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

import SwiftUI

struct AtelierPageDateView: View {
    //call the cooking class to retrieve date infos
    var atelier: Atelier
    
    var body: some View {
        VStack {
            Image("calendar")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(2)
            // use the function under to change the date into a string format to show it
            Text(getFormattedDateAndTime())
                .font(.PoppinsSubhead())
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(Color.red50)
        .cornerRadius(16)
    }

    //function to change the date into a string format to show it
    func getFormattedDateAndTime() -> String {
        //put the DateFormatter') into a var to use it later
        let dateFormatter = DateFormatter()

        //choose format of the string for date
        dateFormatter.dateFormat = "dd/MM"
        //retrieve it into a var
        let dateString = dateFormatter.string(from: atelier.date)

        //same with the hour
        let timeFormatter = DateFormatter()

        timeFormatter.dateFormat = "HH:mm"
        let timeString = timeFormatter.string(from: atelier.date)
        
        // return the 2 varaibles containing the date and hour into string
        return "\(dateString) \(timeString)"
    }
}

#Preview {
    AtelierPageView (atelier: ateliers[0])
}
