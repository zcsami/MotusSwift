import Foundation

func lireFichierMots() -> [String] {
    if let filePath = Bundle.main.path(forResource: "words", ofType: "txt") {
        do {
            let content = try String(contentsOfFile: filePath, encoding: .utf8)  // Force UTF-8
            let mots = content.components(separatedBy: .newlines).filter { !$0.isEmpty }
            let motsUniques = Array(Set(mots))  // Supprimer les doublons si nécessaire
            return motsUniques
        } catch {
            print("Erreur lors de la lecture du fichier : \(error.localizedDescription)")
        }
    } else {
        print("Fichier words.txt introuvable.")
    }
    return []
}
