//
//  View+Extension.swift
//  SAAProject
//
//  Created by SAHIL AMRUT AGASHE on 20/08/24.
//

import SwiftUI

extension View {
    /// You can print statements for debugging SwiftUI View's.
    func printOutput(_ value: Any...) -> Self {
        print(value)
        return self
    }
}
