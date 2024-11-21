import SwiftUI

struct StacksView: View {
    var body: some View {
        LazyVStack (spacing: 25) {
            Image(systemName: "bird")
                .imageScale(.large)
                .foregroundStyle(.primary)
            Text("1111111")
                .padding([.bottom, .top], 30)
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
            Text("2222222")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 10))
                .font(.title)
            
            LazyHStack {
                Text("3333333")
                    .padding()
                    .background(Color.red, in: RoundedRectangle(cornerRadius: 10))
                Text("4444444")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding()
    }
}

#Preview {
    StacksView()
}
