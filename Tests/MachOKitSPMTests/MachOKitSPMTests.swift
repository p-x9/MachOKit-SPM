import XCTest
import MachOKit

final class MachOKitSPMTests: XCTestCase {
    func test() {
        let machO = MachOImage(name: "MachOKitSPMTests")!
        print(machO)
    }
}
