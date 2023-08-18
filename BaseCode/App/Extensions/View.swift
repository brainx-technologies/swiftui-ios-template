//
//  View.swift
//  BaseCode
//
//  Created by  on 16/08/2023.
//

import SwiftUI

extension View {
    
    func alert(error: Binding<Error?>) -> some View {
        let unwrappedError = AppError(message: error.wrappedValue?.localizedDescription ?? "")

        return alert(isPresented: .constant(error.wrappedValue != nil), error: unwrappedError) { _ in

            Button("OK") {
                error.wrappedValue = nil
            }
        } message: { error in
            Text(error.localizedDescription)
        }
    }
}
