import SwiftUI

var legs: some BodyPart {
    Legs {
        ZStack {
            LegLimb()
                .offset(x: -36)
            LegLimb()
                .offset(x: 36)

            SGBadge()
                .offset(x: 36, y: -70)
        }
        .frame(width: 200, height: 200)
    }
}

private struct LegLimb: View {
    private let skinTone = Color(red: 0.95, green: 0.78, blue: 0.56)

    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                Rectangle()
                    .fill(.white)
                    .frame(height: 8)

                Rectangle()
                    .fill(.red)
                    .frame(height: 40)

                Rectangle()
                    .fill(skinTone)
                    .frame(height: 86)

                ZStack(alignment: .top) {
                    Rectangle()
                        .fill(.white)
                    Rectangle()
                        .fill(.red)
                        .frame(height: 7)
                        .padding(.top, 11)
                }
                .frame(height: 38)
            }
            .frame(width: 56)
            .clipShape(RoundedRectangle(cornerRadius: 22))

            Sneaker()
                .padding(.top, -6)
        }
    }
}

private struct Sneaker: View {
    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 12)
                .fill(.red)
                .frame(width: 66, height: 24)
            RoundedRectangle(cornerRadius: 5)
                .fill(.white)
                .frame(width: 66, height: 10)
        }
    }
}

private struct SGBadge: View {
    var body: some View {
        HStack(spacing: 2) {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: 17, height: 17)
                Circle()
                    .fill(.red)
                    .frame(width: 13, height: 13)
                    .offset(x: 5)
            }

            VStack(spacing: 1) {
                HStack(spacing: 1) {
                    star()
                    star()
                }
                star()
                HStack(spacing: 1) {
                    star()
                    star()
                }
            }
        }
    }

    private func star() -> some View {
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 4.5, height: 4.5)
            .foregroundStyle(.white)
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    legs
}
