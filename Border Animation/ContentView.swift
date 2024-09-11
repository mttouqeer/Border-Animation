//
//  ContentView.swift
//  Border Animation
//
//  Created by MacBook Pro on 11/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State var rotation:CGFloat = 0
    @State var isFlipped = false
    @State var textFlipped = false
    var body: some View {
        ZStack {
            Color(hex: "#1c1c1c")
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 300, height: 370)
                .foregroundColor(.black)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)


            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 500, height: 300)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.01), .blue, .purple, .purple.opacity(0.01)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))

                .mask {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(lineWidth: 8)
                        .frame(width: 298, height: 368)
                }
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 290, height: 360)
                .foregroundColor(Color(hex: "#1c1c1c"))
                .overlay() {
                    Text(textFlipped ? "50,000" : "Show Balance").bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .rotation3DEffect(
                            .degrees(isFlipped ? 180 : 0)
                            , axis: (x: 0, y: 1, z: 0)
                        )
                }
                .rotation3DEffect(
                    .degrees(isFlipped ? 180 : 0)
                    , axis: (x: 0, y: 1, z: 0)
                )
                .animation(.easeInOut, value: isFlipped)
                .onTapGesture {
                    isFlipped.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        textFlipped = isFlipped
                    }
                }
            
        }
        .preferredColorScheme(.dark)
        .onAppear {
            withAnimation(.linear(duration: 4)
                .repeatForever(autoreverses: false)) {
                    rotation = 360
                }
        }
        
    }
}

struct GradientBorderAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
