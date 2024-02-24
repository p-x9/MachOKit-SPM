import XCTest
import _MachOKitSPM

final class MachOKitSPMTests: XCTestCase {
    func test() {
        let machO = MachOImage(name: "Foundation")!
        print(machO)
    }
}
