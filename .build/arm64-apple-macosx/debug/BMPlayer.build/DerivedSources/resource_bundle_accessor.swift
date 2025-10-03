import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("BMPlayer_BMPlayer.bundle").path
        let buildPath = "/Users/gitburning/Desktop/Project/erxiangheyi/Project/GTP4oDrawProject/Demo/BMPlayer/.build/arm64-apple-macosx/debug/BMPlayer_BMPlayer.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}