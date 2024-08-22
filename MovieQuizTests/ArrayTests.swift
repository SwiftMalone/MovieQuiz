import XCTest
@testable import MovieQuiz

final class ArrayTests: XCTestCase {
    
    func testGetValueInRange() {
        let array = [1, 2, 3, 4]
        let value = array[safe: 2]
        
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 3)
    }
    
    func testGetValueOutOfRange() {
        let array = [1, 2, 3, 4]
        let value = array[safe: 11]
        
        XCTAssertNil(value)
    }
}
