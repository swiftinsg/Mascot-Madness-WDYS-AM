import SwiftUI

var legs: some BodyPart {
    Legs {
        ZStack {
            LegLimb()
                .offset(x: -30)
            LegLimb()
                .offset(x: 30)

            SGBadge()
                .offset(x: 30, y: -63)
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
                    .frame(height: 6)

                Rectangle()
                    .fill(.red)
                    .frame(height: 34)

                Rectangle()
                    .fill(skinTone)
                    .frame(height: 74)

                ZStack(alignment: .top) {
                    Rectangle()
                        .fill(.white)
                    Rectangle()
                        .fill(.red)
                        .frame(height: 6)
                        .padding(.top, 10)
                }
                .frame(height: 34)
            }
            .frame(width: 46)
            .clipShape(RoundedRectangle(cornerRadius: 18))

            Sneaker()
                .padding(.top, -6)
        }
    }
}

private struct Sneaker: View {
    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.red)
                .frame(width: 58, height: 20)
            RoundedRectangle(cornerRadius: 4)
                .fill(.white)
                .frame(width: 58, height: 8)
        }
    }
}

private struct SGBadge: View {
    var body: some View {
        HStack(spacing: 2) {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: 14, height: 14)
                Circle()
                    .fill(.red)
                    .frame(width: 11, height: 11)
                    .offset(x: 4)
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
            .frame(width: 3.5, height: 3.5)
            .foregroundStyle(.white)
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    legs
}
