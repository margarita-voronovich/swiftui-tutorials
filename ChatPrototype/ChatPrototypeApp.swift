import SwiftUI

@main
struct ChatPrototypeApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                StacksView()
                    .tabItem {
                        Label("Stacks", systemImage: "book")
                            .labelStyle(.titleAndIcon)
                            .font(.callout)
                            .underline()
                    }
                
                ControlsView()
                    .tabItem {
                        Label("Controls", systemImage: "gear")
                    }
                
                KeywordBubbleDefaultPaddingView(keyword: "fern-leaf lavender", symbol: "leaf")
                    .tabItem {
                        Label("Text", systemImage: "bird.fill")
                    }
                                                
                CaptionedPhoto(assetName: "IMG_7145", captionText: "This photo is taller than it is wide.")
                    .tabItem {
                        Label("Overlay", systemImage: "arrow.2.circlepath")
                    }
                
                IfElseTrain(longerTrain: true)
                    .tabItem {
                        Label("Hide", systemImage: "train.side.front.car")
                    }
                
                EventTile(event: Event(title: "Buy Daisies", date: .now, location: "Flower Shop", symbol: "gift"))
                    .tabItem {
                        Label("Stripe", systemImage: "moon.stars.fill")
                    }
                
                ScaledSpacing()
                    .tabItem {
                        Label("Spacing", systemImage: "staroflife.fill")
                    }
            }
        }
    }
}
