import SwiftUI

struct ContentView: View {
    @State private var date = Date()
    @State private var vibrateOnRing = false
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "swift")
                    .resizable()
                    .padding(.all, 35)
                    .frame(width: 100.0, height: 100.0)
                DatePicker(
                        "Start Date",
                        selection: $date,
                        displayedComponents: [.date]
                    )
            }
                .padding([.leading, .bottom, .trailing], 15)
            if vibrateOnRing == false {
                Text("Hello Kaan, How are you today?")
                    .padding([.leading, .bottom, .trailing], 45)
                    .fontWeight(.bold)
            } else {
                Text("Good Morning")
                    .padding([.leading, .bottom, .trailing], 45)
                    .fontWeight(.bold)
            }
                Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
                    .padding([.leading, .bottom, .trailing], 55.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
