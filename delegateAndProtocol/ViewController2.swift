//
//  ViewController2.swift
//  delegate
//
//  Created by Md. Mehedi Hasan on 26/2/22.
//

import UIKit

//MARK: step 1
protocol selectColorDelegate{
    func DidSelectColor(message: String , viewColor: UIColor )
}

class ViewController2: UIViewController {

    //MARK: step 2
    var selectColorDelegate: selectColorDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func blueCicked(_ sender: Any) {
        
        //MARK: step 3
        selectColorDelegate.DidSelectColor(message: "you Selected Blue", viewColor: .blue)
        print("blue clicked")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pinkClicked(_ sender: Any) {
        
        selectColorDelegate.DidSelectColor(message: "you Selected Red", viewColor: .red)
        print("pink clicked")
        dismiss(animated: true, completion: nil)

    }
    

}
