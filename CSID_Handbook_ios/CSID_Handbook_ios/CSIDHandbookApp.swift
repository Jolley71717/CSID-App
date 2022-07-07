import SwiftUI

@main
struct CSIDHandbookApp: App {
    @StateObject private var modelData = ModelData()
    
	var body: some Scene {
		WindowGroup {
			ContentView()
                .environmentObject(modelData)
		}
	}
}
