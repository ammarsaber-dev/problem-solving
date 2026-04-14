import Foundation
import Testing

@testable import Lasagna

let RUNALL = Bool(ProcessInfo.processInfo.environment["RUNALL", default: "false"]) ?? false

@Suite struct LasagnaTests {
    @Test("Expected minutes in oven")
    func testExpectedMinutes() {
        #expect(expectedMinutesInOven == 40)
    }

    @Test("Remaining minutes in oven")
    func testRemainingMinutes() {
        #expect(remainingMinutesInOven(elapsedMinutes: 13) == 27)
    }

    @Test("Remaining minutes in oven when done")
    func testRemainingMinutesWhenDone() {
        #expect(remainingMinutesInOven(elapsedMinutes: 40) == 0)
    }

    @Test("Remaining minutes in oven when less than one")
    func testRemainingMinutesWhenLessThanOne() {
        #expect(remainingMinutesInOven(elapsedMinutes: 39) == 1)
    }

    @Test("Preparation time in minutes")
    func testPreparationMinutes() {
        #expect(preparationTimeInMinutes(layers: 6) == 12)
    }

    @Test("Preparation time in minutes for one layer")
    func testPreparationMinutesForOneLayer() {
        #expect(preparationTimeInMinutes(layers: 1) == 2)
    }

    @Test("Preparation time in minutes for zero layers")
    func testPreparationMinutesForZeroLayers() {
        #expect(preparationTimeInMinutes(layers: 0) == 0)
    }

    @Test("Total time in minutes")
    func testTotalMinutes() {
        #expect(totalTimeInMinutes(layers: 1, elapsedMinutes: 30) == 32)
    }

    @Test("Total time in minutes when done")
    func testTotalMinutesWhenDone() {
        #expect(totalTimeInMinutes(layers: 2, elapsedMinutes: 25) == 29)
    }

    @Test("Total time in minutes when less than one")
    func testTotalMinutesWhenLessThanOne() {
        #expect(totalTimeInMinutes(layers: 4, elapsedMinutes: 8) == 16)
    }
}
