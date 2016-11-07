import Foundation
import CommandLine

public protocol Configurable: RemoteConfigurable {

    var source: String { get }
    var destination: String { get }

}
