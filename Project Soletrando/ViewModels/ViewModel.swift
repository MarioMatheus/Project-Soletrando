//
//  ViewModel.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 18/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<ViewModel, Never>()
    
}
