

import UIKit

class PushedViewController: UIViewController, Away {
    weak var home: Home?
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.notifyComingHome()
    }
    @IBAction func doPop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
