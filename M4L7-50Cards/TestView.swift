//
//  TestVies.swift
//  M4L7-50Cards
//
//  Created by David May on 11/27/22.
//

import SwiftUI

struct TestView: View {
    
    let data: [String] = ["Hi", "Hello", "Hey Everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            
            ForEach(1..<10) {index in
                Circle()
                    .frame(height: 10)
            }
                
                
            
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
