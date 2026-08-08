import SwiftUI

var rightArm: some BodyPart {
    RightArm {
        RightUpperArmSegment {
            ZStack {
                Rectangle()
                    .frame(width: 80, height: 200)
                    .foregroundStyle(.orange)
                    .rotationEffect(.degrees(30))
                    
            }
        }
    } foreArm: {
        RightLowerArmSegment {
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 200)
                    .foregroundStyle(.red)
                    .rotationEffect(.degrees(30))
                    .offset(x:-100, y:-30)
                
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    rightArm
}
