//
//  Spinner.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 19/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI

struct Spinner : View {
    var body: some View {
        VStack {
            Text("Loading...")
            ActivityIndicator(style: .large)
            }
            .frame(width: 100,
                   height: 100)
            .background(Color.secondary.colorInvert())
            .foregroundColor(Color.primary)
            .cornerRadius(20)
    }
}

#if DEBUG
struct Spinner_Previews : PreviewProvider {
    static var previews: some View {
        Spinner()
    }
}
#endif
