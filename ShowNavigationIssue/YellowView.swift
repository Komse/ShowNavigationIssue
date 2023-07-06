import SwiftUI

struct YellowView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack {
                Button(
                    action: { presentationMode.wrappedValue.dismiss() },
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
