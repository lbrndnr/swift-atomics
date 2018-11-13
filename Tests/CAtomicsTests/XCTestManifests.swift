import XCTest

extension CAtomicsBasicTests {
    static let __allTests = [
        ("testBool", testBool),
        ("testFence", testFence),
        ("testInt", testInt),
        ("testInt16", testInt16),
        ("testInt32", testInt32),
        ("testInt64", testInt64),
        ("testInt8", testInt8),
        ("testNonNullMutableRawPointer", testNonNullMutableRawPointer),
        ("testNonNullOpaquePointer", testNonNullOpaquePointer),
        ("testNonNullRawPointer", testNonNullRawPointer),
        ("testOptionalMutableRawPointer", testOptionalMutableRawPointer),
        ("testOptionalOpaquePointer", testOptionalOpaquePointer),
        ("testOptionalRawPointer", testOptionalRawPointer),
        ("testUInt", testUInt),
        ("testUInt16", testUInt16),
        ("testUInt32", testUInt32),
        ("testUInt64", testUInt64),
        ("testUInt8", testUInt8),
    ]
}

extension CAtomicsRaceTests {
    static let __allTests = [
        ("testRaceCrash", testRaceCrash),
        ("testRacePointerCAS", testRacePointerCAS),
        ("testRacePointerSwap", testRacePointerSwap),
        ("testRaceSpinLock", testRaceSpinLock),
        ("testRaceTaggedPointerCAS", testRaceTaggedPointerCAS),
    ]
}

extension MemoryOrderTests {
    static let __allTests = [
        ("testEnumCases", testEnumCases),
        ("testMemoryOrder", testMemoryOrder),
    ]
}

extension UnmanagedRaceTests {
    static let __allTests = [
        ("testRaceAtomickishUnmanaged", testRaceAtomickishUnmanaged),
    ]
}

extension UnmanagedTests {
    static let __allTests = [
        ("testDemonstrateWhyLockIsNecessary", testDemonstrateWhyLockIsNecessary),
        ("testSafeStoreFailure", testSafeStoreFailure),
        ("testSafeStoreSuccess", testSafeStoreSuccess),
        ("testSpinLoad", testSpinLoad),
        ("testSpinSwap", testSpinSwap),
        ("testSpinTake", testSpinTake),
        ("testUnmanaged", testUnmanaged),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CAtomicsBasicTests.__allTests),
        testCase(CAtomicsRaceTests.__allTests),
        testCase(MemoryOrderTests.__allTests),
        testCase(UnmanagedRaceTests.__allTests),
        testCase(UnmanagedTests.__allTests),
    ]
}
#endif
