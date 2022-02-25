//
//  ViewController.swift
//  delegate
//
//  Created by Md. Mehedi Hasan on 26/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblColor: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func secondclicked(_ sender: Any) {
        
        
        guard  let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2 else {
            print("faild to load page")
            return
        }
        vc.selectColorDelegate = self
        present(vc, animated: true, completion: nil)
        
    }
    
}
extension ViewController : selectColorDelegate {
    func DidSelectColor(message: String, viewColor: UIColor) {
        self.lblColor.text = message
        self.colorView.backgroundColor = viewColor
        
    }
}


