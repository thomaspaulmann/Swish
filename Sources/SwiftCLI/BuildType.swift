public enum BuildType {

    case debug
    case release

}

extension BuildType: CustomStringConvertible {

    public var description: String {
        return "--configuration \(self)"
    }

}
