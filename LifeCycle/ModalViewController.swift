//
//  SubViewController.swift
//  LifeCycle
//
//  Created by Tsutomu Nagai on 2020/04/28.
//  Copyright © 2020 Tsutomu Nagai. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("①ModalViewController - loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("②ModalViewController - viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // ↓これを追加
        if #available(iOS 13, *) {
            presentingViewController?.beginAppearanceTransition(false, animated: animated)
        }
        // ここまで
        
        print("③ModalViewController - viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("④ModalViewController - viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("⑤ModalViewController - viewDidLayoutSubviews")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ↓これを追加
        if #available(iOS 13, *) {
            presentingViewController?.endAppearanceTransition()
        }
        // ここまで
        
        print("⑥ModalViewController - viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // ↓これを追加
        if #available(iOS 13, *) {
            presentingViewController?.beginAppearanceTransition(true, animated: animated)
            presentingViewController?.endAppearanceTransition()
        }
        // ここまで
        
        print("⑦ModalViewController - viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("⑧ModalViewController - viewDidDisappear")
    }
    
}
