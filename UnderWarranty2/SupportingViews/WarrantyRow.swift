//
//  WarrantyRow.swift
//  UnderWarranty2
//
//  Created by Jeff Chimney on 2019-06-08.
//  Copyright © 2019 Jeff Chimney. All rights reserved.
//

import SwiftUI

struct WarrantyRow : View {
    var warranty: Warranty
    
    var body: some View {
        HStack {
            warranty.image(forSize: 50)
                .clipShape(Circle())
                Text(warranty.name)
                    .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

#if DEBUG
struct WarrantyRow_Previews : PreviewProvider {
    static var previews: some View {
        WarrantyRow(warranty: warrantyInfo[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
