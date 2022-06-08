import SwiftUI
import shared_handbook

struct ContentView: View {
	let greet = Greeting().greeting()

	var body: some View {
        VStack {
            CircleImage()
            VStack(alignment: .leading) {
                Text("CSID Nutrition Guide")
                    .font(.title)
                .foregroundColor(.black)
                HStack {
                    Text("Joshua National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
        }
		Text(greet)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
