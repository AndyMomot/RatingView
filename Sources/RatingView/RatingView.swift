import SwiftUI

struct RatingView: View {
    @Binding private var currentRate: Int
    private let maxRate: Int
    private let color: Color
    
    public init(currentRate: Binding<Int>,
         maxRate: Int = 5,
         color: Color = Color("yellowCustom", bundle: .module)) {
        self._currentRate = currentRate
        self.maxRate = maxRate > .zero ? maxRate : 1
        self.color = color
    }
    
    var body: some View {
        HStack(spacing: .zero) {
            Spacer(minLength: 5)
            
            ForEach(0..<maxRate, id: \.self) { index in
                let rate = (index + 1)
                let isFilled = rate <= currentRate
                
                Image(systemName: isFilled ? "star.fill" : "star")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(color)
                    .onTapGesture {
                        withAnimation(.bouncy(duration: 0.3)) {
                            currentRate = rate
                        }
                    }
                
                Spacer(minLength: 5)
            }
        }
    }
}

struct RatingContentView: View {
    @State private var rate = 0
    
    var body: some View {
        RatingView(currentRate: $rate, maxRate: 5, color: .yellow)
            .frame(maxWidth: 200)
    }
}

#Preview {
    RatingContentView()
}
