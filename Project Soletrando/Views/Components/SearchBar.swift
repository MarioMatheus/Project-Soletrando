import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State var placeholder: String = ""
    @State var action: () -> Void
    
    @State private var searchButtonIsPresent = false
    
    @State private var keyboard = AppKeyboard()
    
    var body: some View {
        ZStack {
            Color.white
            HStack {
                TextField(text,
                          text: $placeholder,
                          onEditingChanged: { if $0 { self.keyboard.returnKeyType = .search } },
                          onCommit: action)
                    .padding([.leading, .trailing], 8)
                    .frame(height: 38)
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(8)
                    .onTapGesture {
                        withAnimation { self.searchButtonIsPresent = true }
                }
                if searchButtonIsPresent {
                    Button(action: {
                        withAnimation { self.searchButtonIsPresent = false }
                    }, label: { Text("Cancel") })
                        .foregroundColor(Color.blue)
                }
            }
            .padding([.leading, .trailing], 16)
            
        }
        .frame(height: 64)
        
    }
    
}
