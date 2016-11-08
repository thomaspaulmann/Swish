public enum PackageType: String {

    case empty
    case library
    case executable
    case systemModule

}

extension PackageType: CustomStringConvertible {

    public var description: String {
        return "--type \(self)"
    }

}
