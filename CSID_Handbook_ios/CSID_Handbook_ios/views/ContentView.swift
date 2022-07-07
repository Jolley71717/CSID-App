import SwiftUI
import shared_handbook

struct ContentView: View {
	var body: some View {
        FoodsListView()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone XS Max", "iPhone 12 Pro Max"], id: \.self) { deviceName in
            ContentView()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
		
	}
}
