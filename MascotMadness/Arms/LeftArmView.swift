import SwiftUI

var leftArm: some BodyPart {
LeftArm {
    LeftUpperArmSegment {
        ZStack {
            Rectangle()
                .frame(width: 80, height: 200)
                .foregroundStyle(.orange)
                .rotationEffect(.degrees(-15))
        }
    }
} foreArm: {
    LeftLowerArmSegment {
        ZStack {
            Rectangle()
                .frame(width: 50, height: 200)
                .foregroundStyle(.red)
                .rotationEffect(.degrees(-15))
                .offset(x:50, y:-10)
            Text("✊🏼")
                .font(.system(size: 100))
                .rotationEffect(.degrees(200))
                .rotation3DEffect(.degrees(150), axis: (0, 1, 0))
                .offset(x: 80, y: 110)
            Text("🇸🇬")
                .font(.system(size: 80))
                .rotationEffect(.degrees(-20))
                .offset(x: -15, y: -260)
        }
    }
}
}
#Preview(traits: .fixedLayout(width: 200, height: 400)) {
    leftArm
}
