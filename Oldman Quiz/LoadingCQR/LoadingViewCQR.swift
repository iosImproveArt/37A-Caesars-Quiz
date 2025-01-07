//
//  LoadingView.swift
//  Sg western star
//
//  Created by Uniqit on 16.07.2024.
//

import SwiftUI

struct LoadingViewSQ: View {
    @AppStorage("firstInApp") var firstInApp = true
    
    @Binding var showView: Bool
    @State var rotation: CGFloat = 0
    
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
        ZStack {
            VStack {
                Spacer()
                Image("loading 1")
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear, value: rotation)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
                            guard showView else { timer.invalidate(); return }
                            
                            rotation += 1
                        }
                    }
                
                Text("Loading...")
                    .withFont(size: 30, weight: .medium)
                    .padding(.bottom, 30)
            }.background(1)
            
            
            PrivacyViewOldman(showLoading: $showView)
                .opacity(firstInApp ? 1: 0)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    if !firstInApp {
                        showView = false
                    }
                }
            }
        }
    }
    
}

#Preview {
    LoadingViewSQ(showView: .constant(true))
}

