import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let fileName = "sample"
        let fileType = "txt"
        
        if let filePath = Bundle.main.path(forResource: fileName, ofType: fileType) {
            do {
                print(filePath)
                let content = try String(contentsOfFile: filePath, encoding: .utf8)
                print("File Content: \(content)")
            } catch {
                showAlert(message: error.localizedDescription)
            }
        } else {
            showAlert(message: "Error: File not found.")
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

