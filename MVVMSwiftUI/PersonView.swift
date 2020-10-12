//
//  PersonView.swift
//  MVVMSwiftUI
//
//  Created by Raphael Cerqueira on 11/10/20.
//

import SwiftUI

struct PersonView: View {
    @ObservedObject var viewModel: PersonViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.model.name)
            
            Button(action: {
                viewModel.changeName("Cerqueira")
            }, label: {
                Text("Update model")
            })
            .padding()
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(viewModel: .init(Person(name: "Raphael")))
    }
}
