//
//  AddWarranty.swift
//  UnderWarranty2
//
//  Created by Jeff Chimney on 2019-06-10.
//  Copyright © 2019 Jeff Chimney. All rights reserved.
//

import SwiftUI

struct AddWarranty : View {
    
    @State var name: String = ""
    @State var description: String = ""
    @State var begins: Date = Date()
    @State var ends: Date = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField($name, placeholder: Text("New Item")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    )
                    
                    Spacer()
                }
                .padding()
                .offset(x: 0, y: -50)
                .padding(.bottom, -50)
                
                HStack {
                    TextField($description, placeholder: Text("Item Description")
                    )
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    Text("Warranty Begins")
                    Spacer()
                }
                .padding()
                
                HStack {
                    DatePicker($begins) {
                        Text("Begins")
                    }
                }
                .padding()
                
                HStack {
                    Text("Warranty Ends")
                    Spacer()
                }
                .padding()
                
                HStack {
                    DatePicker($begins) {
                        Text("Ends")
                    }
                }
                .padding()
            }
            
            Spacer()
                
            .navigationBarItems(leading:
                PresentationButton(
                    Text("Cancel"),
                    destination: WarrantyList()
            ), trailing:
                Button(action: {
                    print("Saving New Item")
                }) {
                    Text("Save")
            })
        }
    }
}

#if DEBUG
struct AddWarranty_Previews : PreviewProvider {
    static var previews: some View {
        AddWarranty()
    }
}
#endif
