import Foundation

final class SampleData {
    
    static func generatePlayersData() -> [BusLine] {
        return [
            BusLine(number: "1", departure:"Hotel", arrival:"Gare"),
            BusLine(number: "2", departure:"Hotel", arrival:"Gare"),
        ]
    }
}
