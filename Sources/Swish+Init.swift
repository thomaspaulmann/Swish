import Foundation

extension Swish {

    func initialise() {
        do {
            self.configuration = try Configuration.writeTemplate()
        } catch let error {
            print(error)
        }
    }
    
}

