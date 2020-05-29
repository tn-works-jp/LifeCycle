//
//  FullScreenViewController.swift
//  LifeCycle
//
//  Created by Tsutomu Nagai on 2020/04/29.
//  Copyright © 2020 Tsutomu Nagai. All rights reserved.
//

import UIKit

class FullScreenViewController: UIViewController {

     override func loadView() {
         super.loadView()
         print("①FullScreenViewController - loadView")
    }
 
     override func viewDidLoad() {
         super.viewDidLoad()
         print("②FullScreenViewController - viewDidLoad")
    }

     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         print("③FullScreenViewController - viewWillAppear")
     }
     
     override func viewWillLayoutSubviews() {
         super.viewWillLayoutSubviews()
         print("④FullScreenViewController - viewWillLayoutSubviews")
     }
     
     override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         print("⑤FullScreenViewController - viewDidLayoutSubviews")
     }

     override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         print("⑥FullScreenViewController - viewDidAppear")
     }

 
     override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         print("⑦FullScreenViewController - viewWillDisappear")
     }

     override func viewDidDisappear(_ animated: Bool) {
         super.viewDidDisappear(animated)
         print("⑧FullScreenViewController - viewDidDisappear")
     }

}
