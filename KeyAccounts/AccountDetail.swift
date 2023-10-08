//
//  AccountDetail.swift
//  KeyAccounts
//
//  Created by Kristofer Younger on 10/7/23.
//

import SwiftUI

struct AccountDetail: View {
    @Binding var item: Item
    
    var body: some View {
        VStack{
            Text(item.timestamp!, formatter: timestampFormatter)
            TextField("Account name", text: $item.title)
        }
    }
}

struct AccountDetail_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
