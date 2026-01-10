import ArgumentParser
import LibNFCSwift

@main
struct LibNFCSwiftUsage: ParsableCommand {
    mutating func run() throws {
        print("Hello, world.  Testing LibNFCSwift!")

        let nfc = NFC()
        print ("LibNFC version \(nfc.libNFCVersion() ?? "Version not available")")

        nfc.nfcInit()
        nfc.nfcOpen()
        print("NFC Device name: \(nfc.deviceName() ?? "Unknown device name")")
    }
}
