//
//  AccountDetail.swift
//  KeyAccounts
//
//  Created by Kristofer Younger on 10/7/23.
//

import SwiftUI

struct AccountDetail: View {
    
    @StateObject var item: Item
    
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        VStack{
            Form {
                Text(item.timestamp!, formatter: timestampFormatter)
                TextField("Account name", text: $item.title.toUnwrapped(defaultValue: "untitled"))
                TextField("Account", text: $item.account.toUnwrapped(defaultValue: "untitled"))
                TextField("Password", text: $item.secret.toUnwrapped(defaultValue: "untitled"))
                LabeledContent {
                    TextField("Location", text: $item.location.toUnwrapped(defaultValue: "nowhere"))
                } label: {
                  Text("Location")
                }

            }
            .onSubmit {
                if viewContext.hasChanges {
                    do {
                        try viewContext.save()
                        print("saved...")
                    } catch {
                        let nserror = error as NSError
                        fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                    }
                }
            }
        }
    }
}

struct AccountDetail_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
