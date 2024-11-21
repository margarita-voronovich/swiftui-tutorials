import SwiftUI

struct IfElseTrain: View {
    var longerTrain: Bool
    
    @Environment(
        \.colorScheme
    ) var colorScheme // Access the current color scheme
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                    .imageScale(.large)
                    .foregroundStyle(Color.red)
                
                if colorScheme == .light {
                    Image(systemName: "train.side.middle.car")
                        .imageScale(.large)
                        .foregroundStyle(Color.green)

                }
                
                //                Image(systemName: "train.side.middle.car")
                //                                    .opacity(longerTrain ? 1 : 0)
                //                                    .imageScale(.large)
                //                                    .foregroundStyle(Color.green)
                
                Image(systemName: "train.side.front.car")
                    .imageScale(.large)
                    .foregroundStyle(Color.blue)

            }
            Divider()
        }
    }
}

struct IfElseTrain_Previews: PreviewProvider {
    static var previews: some View {
        IfElseTrain(longerTrain: true)
        IfElseTrain(longerTrain: false)
    }
}
