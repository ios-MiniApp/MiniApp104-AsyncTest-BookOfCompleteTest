//
//  ViewController.swift
//  MiniApp104-AsyncTest-BookOfCompleteTest
//
//  Created by 前田航汰 on 2022/10/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func asyncString(completion: ((String) -> ())?) {
        DispatchQueue.global().async {
            sleep(3)
            completion?("文字列A")
        }
    }

}

