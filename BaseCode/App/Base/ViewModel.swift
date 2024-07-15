//
//  ViewModel.swift
//  BaseCode
//
//  Created by brainx on 15/07/2024.
//

import Combine
import Foundation
import SwiftDI

class ViewModel: ObservableObject {

    @Published var isLoading = false
    @Published var error: Error?
    @Published var alert: String?

    @Injected var router: Router

}
