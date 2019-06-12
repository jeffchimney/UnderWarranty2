//
//  WarrantyDetail.swift
//  UnderWarranty2
//
//  Created by Jeff Chimney on 2019-06-08.
//  Copyright © 2019 Jeff Chimney. All rights reserved.
//

import SwiftUI

struct WarrantyDetail : View {
    var warranty: Warranty
    
    var body: some View {
        VStack {
            HStack {
                CircleImage(image: warranty.image(forSize: 100))
                
                VStack(alignment: .leading) {
                    Text(warranty.name)
                        .font(.title)
                    Text(warranty.description)
                        .font(.subheadline)
                }
                
                Spacer()
            }
            .padding()
            .offset(x: 0, y: -50)
            .padding(.bottom, -50)
            
            HStack {
                Text("Start Date")
                Spacer()
                Text(warranty.startDate)
            }
            .padding()
            
            HStack {
                Text("End Date")
                Spacer()
                Text(warranty.endDate)
            }
            .padding()
            
            HStack {
                VStack {
                    Text("Reminder")
                }
                Spacer()
                Text("2020-09-20")
            }
            .padding()
            
//            "isLifetimeWarranty": false,
//            "reminderDaysBefore": 12,
//            "imageName": "macpro",
//            "dateCreated": "2019-06-08",
//            "lastUpdated": "2020-10-02",
//            "recentlyDeleted": false,
//            "expired": false
            
            Spacer()
        }
        //.navigationBarTitle(Text(warranty.name), displayMode: .inline)
        
    }
}

#if DEBUG
struct WarrantyDetail_Previews : PreviewProvider {
    static var previews: some View {
        WarrantyDetail(warranty: warrantyInfo[0])
    }
}
#endif
