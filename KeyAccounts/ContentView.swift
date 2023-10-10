//
//  ContentView.swift
//  KeyAccounts
//
//  Created by Kristofer Younger on 10/7/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        AccountList()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
