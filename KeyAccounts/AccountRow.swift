//
//  AccountRow.swift
//  KeyAccounts
//
//  Created by Kristofer Younger on 10/7/23.
//

import SwiftUI

struct AccountRow: View {
    var item: Item
    
    var body: some View {
        Text("Created: \(item.timestamp!, formatter: timestampFormatter)")
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
