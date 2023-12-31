import SwiftUI

struct ContentView: View {
    @State var showYellowViewScreenCover: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                goToYellowButton()
                goToYellowScreenCoverButton()
            }
            .padding()
            .fullScreenCover(isPresented: $showYellowViewScreenCover) {
                print("showYellowViewScreenCover dismissed")
            } content: {
                YellowView()
                    .statusBar(hidden: false)
            }
            .navigationTitle("Home")
        }
    }

    private func goToYellowButton() -> some View {
        NavigationLink(destination: YellowView()) {
            Text("Go to Yellow - NavigationLink")
                .foregroundColor(.yellow)
        }
    }

    private func goToYellowScreenCoverButton() -> some View {
        Button {
            showYellowViewScreenCover.toggle()
        } label: {
            Text("Go to Yellow - Screen Cover" )
                .foregroundColor(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
