import Foundation

public protocol Configurable {

    var username: String { get }
    var hostname: String { get }
    var source: String { get }
    var destination: String { get }

}
