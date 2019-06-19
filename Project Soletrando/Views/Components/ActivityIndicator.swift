//
//  ActivityIndicator.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 19/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.startAnimating()
    }

}
