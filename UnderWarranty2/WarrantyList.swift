//
//  ContentView.swift
//  UnderWarranty2
//
//  Created by Jeff Chimney on 2019-06-08.
//  Copyright © 2019 Jeff Chimney. All rights reserved.
//

import SwiftUI

struct WarrantyList : View {
    var body: some View {
        NavigationView {
            List(warrantyInfo) { warranty in
                NavigationButton(destination: WarrantyDetail(warranty: warranty)) {
                    WarrantyRow(warranty: warranty)
                }
            }
            .navigationBarTitle(Text("Warranties"))
            .navigationBarItems(trailing:
                PresentationButton(
                    Image(systemName: "plus.circle")
                        .imageScale(.large)
                        .accessibility(label: Text("User Profile"))
                        .padding(),
                    destination: AddWarranty()
                )
            )
        }
    }
}

#if DEBUG
struct WarrantyList_Previews : PreviewProvider {
    static var previews: some View {
        WarrantyList()
    }
}
#endif
