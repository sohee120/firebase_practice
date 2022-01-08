//
//  ViewController.swift


import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var textfieldID: UITextField!
    @IBOutlet weak var textfieldPW: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    func updateUI() {
        if let user = Auth.auth().currentUser {
            //로그인 된 상태 (세션지원 - 자동로그인 지원)
            labelLogin.text = "로그인상태: \(user.email!)"
        } else {
            //로그아웃 된 상태
            labelLogin.text = "로그인상태: 로그아웃"
        }
    }

}

