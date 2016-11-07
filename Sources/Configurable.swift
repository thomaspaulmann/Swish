import Foundation

public protocol Configurable {

    var username: String { get }
    var hostname: String { get }

    var source: URL? { get }
    var destination: URL? { get }

}
