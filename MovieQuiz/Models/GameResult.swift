import Foundation
import UIKit

struct GameResult: Codable {
    let correct: Int
    let total: Int
    let date: Date
    func isBetterThan(_ another: GameResult) -> Bool {
        correct > another.correct
    }
}

extension GameResult: Comparable {
    static func < (lhs:GameResult, rhs:GameResult) -> Bool {
        let lhsAccuracy: Double = Double(lhs.correct) / Double(lhs.total)
        let rhsAccuracy: Double = Double(rhs.correct) / Double(rhs.total)
        return lhsAccuracy < rhsAccuracy
    }
}
