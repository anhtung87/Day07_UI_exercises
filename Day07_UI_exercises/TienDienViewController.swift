//
//  TienDienViewController.swift
//  Day07_UI_exercises
//
//  Created by Hoang Tung on 10/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class TienDienViewController: UIViewController {
    
    @IBOutlet weak var tienDienLabel: UILabel!
    
    @IBOutlet weak var nhapSoDienTextField: UITextField!
    
    @IBOutlet weak var tinhTienButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tinhTienButton.layer.cornerRadius = 16
    }
    
    func tinhGiaDien(_ soDien: Float) -> Int {
        if soDien < 0 {
            return 0
        } else if soDien <= 50 {
            return Int(soDien * 1678)
        } else if soDien <= 100 {
            return Int(50 * 1678 + (soDien - 50) * 1734)
        } else if soDien <= 200 {
            return Int(50 * 1678 + 50 * 1734 + (soDien - 100) * 2014)
        } else if soDien <= 300 {
            let money = 50 * 1678 + 50 * 1734 + 100 * 2014
            return Int(Float(money) + (soDien - 200.0) * 2536.0)
        } else if soDien <= 400 {
            let money = 50 * 1678 + 50 * 1734 + 100 * 2014 + 100 * 2536
            return Int(Float(money) + (soDien - 300.0) * 2834.0)
        } else {
            let money = 50 * 1678 + 50 * 1734 + 100 * 2014 + 100 * 2536 + 100 * 2834
            return Int(Float(money) + (soDien - 400.0) * 2927.0)
        }
    }
    
    @IBAction func tinhTienDien(_ sender: Any) {
        let tienDien = Float(nhapSoDienTextField.text ?? "0")
        let thanhToan = tinhGiaDien(tienDien ?? 0.0)
        tienDienLabel.text = "\(thanhToan) vnđ"
    }
}
