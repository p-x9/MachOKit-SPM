import XCTest
import _MachOKitSPM

final class MachOKitSPMTests: XCTestCase {
    func test() {
        let machO = MachOImage(name: "MachOKitSPMTests")!
        print(machO)
    }
}
