import UIKit

class FileManager {
    static let fileObj = FileManager()
    
    private init() {}
    
    private let storage: String = "/var/www/sys_storage/"
    
    private func checkFileAccess(who username: String) -> (Bool, String) {
        if username == "JackWill" {
            return (true, "Access Granted")
        } else {
            return (false, "Access Denied")
        }
    }
    
    func getStorage(who username: String) -> (String, String?) {
        let access = checkFileAccess(who: username)
        
        if access.0 {
            return (access.1, storage)
        } else {
            return (access.1, nil)
        }
    }
}

let fileManager: FileManager = .fileObj
let result = fileManager.getStorage(who: "JackWill")
print(result.0)
print(result.1 ?? "nil")
let result2 = fileManager.getStorage(who: "Lewis")
print(result2.0)
print(result2.1 ?? "nil")
