import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                goToYellowButton()
            }
            .padding()
        }
    }

    private func goToYellowButton() -> some View {
        NavigationLink(destination: YellowView()) {
            Text("Go to Yellow")
                .foregroundColor(.yellow)
        }
        .navigationTitle("Yellow")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
