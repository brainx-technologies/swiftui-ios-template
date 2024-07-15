//
//  View.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import SwiftUI

extension View {

    func error(_ error: Binding<Error?>) -> some View {
        let isPresented = Binding<Bool>(
            get: {
                error.wrappedValue != nil
            },
            set: { (newValue, _) in
                if newValue {
                    error.wrappedValue = nil
                }
            }
        )
        let localizedError = AppError(error: error.wrappedValue)
        return alert(
            isPresented: isPresented,
            error: localizedError,
            actions: {
                Button("Ok", role: .cancel) {

                }
            }
        )
    }

    func alert(message: Binding<String?>) -> some View {
        let isPresented = Binding<Bool>(
            get: {
                message.wrappedValue != nil
            },
            set: { (newValue, _) in
                if newValue {
                    message.wrappedValue = nil
                }
            }
        )
        return alert(
            Text(message.wrappedValue ?? ""),
            isPresented: isPresented,
            actions: {
                Button("Ok", role: .cancel) {

                }
            }
        )
    }

}


