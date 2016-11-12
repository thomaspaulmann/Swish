import Foundation

typealias JSON = [String : AnyObject]

enum ConfigurationError: Error {

    case noConfigurationFile
    case invalidSyntax
    case unableToWriteTemplate

}

struct Configuration {

    // MARK: - Properties

    let machine: String
    let source: String
    let destination: String

    // MARK: - Initialiser

    init(machine: String, source: String = ".", destination: String = "~/Swish") {
        self.machine = machine
        self.source = source
        self.destination = destination
    }

    init(fromURL url: URL) throws {
        guard let data = try? Data(contentsOf: url) else {
            throw ConfigurationError.noConfigurationFile
        }

        guard
            let json = (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)) as? JSON,
            let machine = json["machine"] as? String,
            let source = json["source"] as? String,
            let destination = json["destination"] as? String
        else {
            throw ConfigurationError.invalidSyntax
        }

        self.machine = machine
        self.source = source
        self.destination = destination
    }

}

// MARK: - Template

extension Configuration {

    static func writeTemplate() throws -> Configuration? {
        let template =
            "{\n" +
                "    \"machine\": \"username@hostname\",\n" +
                "    \"source\": \".\",\n" +
                "    \"destination\": \"~/Swish\"\n" +
        "}"

        let currentDirectory = FileManager.default.currentDirectoryPath
        let url = URL(fileURLWithPath: currentDirectory).appendingPathComponent("Swish")

        do {
            try template.write(to: url, atomically: false, encoding: .utf8)

            print("👷 Did create Swish Template @ \(url.absoluteURL.path)")
        } catch {
            throw ConfigurationError.unableToWriteTemplate
        }

        return try? Configuration(fromURL: url)
    }
    
}
