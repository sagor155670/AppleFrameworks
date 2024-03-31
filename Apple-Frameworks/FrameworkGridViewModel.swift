//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Saiful Islam Sagor on 19/9/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
             isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false 
    
}
