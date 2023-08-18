//
//  ViewModel.swift
//  BaseCode
//
//  Created by  on 16/08/2023.
//

import Combine
import Foundation

class ViewModel: ObservableObject {

    @Published var isLoading = false
    @Published var error: Error?

}



