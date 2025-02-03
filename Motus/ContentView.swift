import SwiftUI

struct ContentView: View {
    @State private var mots: [String] = []  // Liste des mots à afficher

    var body: some View {
        VStack {
            Text("Mots chargés depuis le fichier :")
                .font(.headline)
                .padding(.bottom, 10)

            List(mots, id: \.self) { mot in
                Text(mot)
            }
        }
        .onAppear {
            mots = lireFichierMots()  // Charger les mots au démarrage
        }
        .padding()
    }
}
