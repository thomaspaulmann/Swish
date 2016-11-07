public enum SwiftPackageType: String {

    case executable

}

extension SwiftPackageType: CustomStringConvertible {

    public var description: String {
        return "--type \(self)"
    }

}
