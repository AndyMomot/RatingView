# RatingView

## Installation

To install this package, import 'https://github.com/AndyMomot/RatingView' in SPM.|

## Usage example

'''swift

struct RatingContentView: View {
    @State private var rate = 0
    
    var body: some View {
        RatingView(currentRate: $rate, maxRate: 5, color: .yellow)
            .frame(maxWidth: 200)
    }
}

'''
