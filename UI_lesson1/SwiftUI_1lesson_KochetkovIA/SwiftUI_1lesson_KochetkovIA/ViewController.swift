//
//  ViewController.swift
//  SwiftUI_1lesson_KochetkovIA
//
//  Created by Иван Кочетков on 17.08.2020.
//  Copyright © 2020 Ivan Kochetkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var loginTextFiled: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBAction func ourSegControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            message.text = ""
            print("Меню входа")
        case 1:
            message.text = "Раздел в разработке!"
            print("В разработке")
        default:
            message.text = "Какая-то ошибка"
            Error.self
        }
    }
    
    @IBOutlet weak var message: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardAppeared), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc
    private func keyboardAppeared(notification: Notification) {
       guard
        let userInfo = notification.userInfo,
        let keyboardSize = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        print("клава \(keyboardSize.height)")
        scrollView.contentInset.bottom = keyboardSize.height
    }
    
    @IBAction func buttonTupped(_ sender: Any) {
        var login = loginTextFiled.text
        var password = passwordTextField.text
        
        if login == "uzver" && password == "parol" {
            print("Вход выполнен")
            message.text = "Вход выполнен!"
        }else{
            print("Логин или пароль неверен")
            message.text = "Пароль или логин неверен!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

