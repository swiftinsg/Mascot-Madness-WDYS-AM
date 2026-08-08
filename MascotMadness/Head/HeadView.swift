import SwiftUI

var head: some BodyPart {
    Head {
        ZStack {
            Circle()
                .frame(width: 400, height: 400)
                .foregroundStyle(.red)
            Circle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.white)
                .foregroundStyle(.white)
            
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}
