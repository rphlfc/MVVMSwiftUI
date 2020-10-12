//
//  PersonViewModel.swift
//  MVVMSwiftUI
//
//  Created by Raphael Cerqueira on 11/10/20.
//

import Foundation

class PersonViewModel: ObservableObject {
    @Published var model: Person
    
    init(_ model: Person) {
        self.model = model
    }
    
    func changeName(_ newName: String) {
        model.name = newName
    }
}
