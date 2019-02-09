
import UIKit

protocol Home : class {
    func comingHome()
}
protocol Away : class {
    var home : Home? {get set}
}
extension Away where Self : UIViewController {
    func notifyComingHome() {
        if self.isBeingDismissed || self.isMovingFromParent {
            self.home?.comingHome()
        }
    }
}

class ViewController: UIViewController, Home {
    func comingHome() {
        print("coming home")
    }
    @IBAction func presentFullScreen (_ sender:Any) {
        let vc = PresentedFullScreenViewController()
        vc.home = self
        self.present(vc, animated:true)
    }
    @IBAction func presentNotFullScreen (_ sender:Any) {
        let vc = PresentedNotFullScreenViewController()
        vc.modalPresentationStyle = .formSheet
        vc.home = self
        self.present(vc, animated:true)
    }
    @IBAction func presentPopover (_ sender:Any) {
        let vc = PopoverViewController()
        vc.modalPresentationStyle = .popover
        if let pop = vc.popoverPresentationController {
            pop.sourceView = sender as? UIView
            pop.sourceRect = (sender as! UIView).bounds
        }
        vc.home = self
        self.present(vc, animated:true)
    }
    @IBAction func push (_ sender:Any) {
        let vc = PushedViewController()
        vc.home = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

