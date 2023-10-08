//
//  ContentView.swift
//  KeyAccounts
//
//  Created by Kristofer Younger on 10/7/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        AccountList()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
