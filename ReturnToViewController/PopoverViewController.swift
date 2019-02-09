

import UIKit

class PopoverViewController: UIViewController, Away {
    weak var home: Home?
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.notifyComingHome()
    }
    @IBAction func doDismiss(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
