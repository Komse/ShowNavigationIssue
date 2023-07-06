import SwiftUI

struct YellowView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
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
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Yellow")
    }
}
