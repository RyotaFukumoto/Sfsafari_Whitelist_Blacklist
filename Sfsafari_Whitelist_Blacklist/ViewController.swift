//
//  ViewController.swift
//  Sfsafari_Whitelist_Blacklist
//
//  Created by ryota on 2020/06/05.
//  Copyright © 2020 ryota. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedSafariButton(_ sender: UIButton) {
        SFContentBlockerManager.reloadContentBlocker(withIdentifier: "ryotaF.Sfsafari-Whitelist-Blacklist.contentsBlockList", completionHandler: nil)

        let googleUrl = NSURL(string: "https://www.google.com")

            if let googleUrl = googleUrl {
                let safariViewController = SFSafariViewController(url: googleUrl as URL)
                present(safariViewController, animated: false, completion: nil)
                
            }
        
    }
    
}
extension ViewController: SFSafariViewControllerDelegate {
    func safariViewController(_ controller: SFSafariViewController,activityItemsFor URL: URL, title: String?) -> [UIActivity] {
        return [UIActivity()]
    }
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("safariViewControllerDidFinish:")
    }
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print("safariViewController:didCompleteInitialLoad:")
    }
}

class CustomActivity: UIActivity {

}
