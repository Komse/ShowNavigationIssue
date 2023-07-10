import SwiftUI

struct YellowView: View {
    @Environment(\.dismiss) private var dismiss: DismissAction
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack {
                Button(
                    action: { dismiss() },
                    label: {
                        HStack{
                            Image(systemName: "chevron.backward")
                            Text("Back")
                        }
                    }
                )
                .font(.system(size: 17))
                
                goToRedButton()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Yellow")
    }
    
    private func goToRedButton() -> some View {
        NavigationLink(destination: RedView()) {
            Text("Go to Red - NavigationLink")
                .foregroundColor(.red)
        }
    }
}
