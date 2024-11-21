import SwiftUI

struct ControlsView: View {
    @State private var selectedOption = "Option 1"
    
    
    func choiceList() -> [String] {
        return ["Option 1", "Option 2", "Option 3", "Option 4"]
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.teal)
            Text("This is globe!")
                .padding()
                .background(Color.blue, in: RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.white)
                .shadow(radius: 10)
                .font(.caption)
                .italic()
                .bold()
            
            
            Picker("Select an Option", selection: $selectedOption) {
                ForEach(choiceList(), id: \.self) { choice in
                    Text(choice)
                }
            }
            .pickerStyle(.wheel)
            .padding()
            
            Text("You selected: \(selectedOption)")
                .padding()
            
            Button("OK") {}
            .padding()
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.white)
            .shadow(radius: 10)
            .controlSize(.extraLarge)
            
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Circle()
                    .foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(.green)
            }
            .aspectRatio(3.0, contentMode: .fit)
        }.padding()
    }
}

#Preview {
    ControlsView()
}
