import SwiftUI

var torso: some BodyPart {
    Torso {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill()
                .frame(width: 300, height: 350)
                .foregroundStyle(.red)
            
            Text("🇸🇬")
                .font(.system(size: 200))
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    torso
}
