import SwiftUI

var head: some BodyPart {
    Head {
        ZStack {
            Circle()
                .frame(width: 670, height: 670)
                .foregroundStyle(.red)
            Circle()
                .frame(width: 630, height: 630)
                .foregroundStyle(.white)
            Text("▲")
                .font(.system(size: 600))
                .rotationEffect(Angle(degrees: 180))
                .foregroundStyle(.red)
            
            Circle()
                .frame(width: 400, height: 400)
                .foregroundStyle(.red)
            VStack {
                
                
                HStack{
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundStyle(.white)
                        .foregroundStyle(.white)
                    
                        .padding(.trailing,50)
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundStyle(.white)
                        .foregroundStyle(.white)
                        .padding(.leading, 50)
                    
                    
                    
                }
                Text("˕")
                    .padding(.top,-90)
                    .foregroundStyle(.white)
                    .font(.system(size: 100))
                   
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}
