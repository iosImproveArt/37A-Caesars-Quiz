//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewOldman37: View {
    
   var wrfw = "wfvrwv"
    var wrfvwr = 145.54524
    func cwefcwrefc() -> Float {
        return 242.242
    }
    func qerfcqref() {
        print("cqefcqefc")
    }
    fileprivate struct Jrmfkc {}
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium, color: .hex("FFFFFF"))
            
            VStack(spacing: isSE ? 20: 60) {
                NavigationLink {
                    QuestionViewOldman37(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewOldman37(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewOldman37(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewOldman37(showLoading: false, selectedTab: .quiz)
}
