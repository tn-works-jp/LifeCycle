//
//  ViewController.swift
//  LifeCycle
//
//  Created by Tsutomu Nagai on 2020/05/29.
//  Copyright © 2020 Tsutomu Nagai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("①ViewController - loadView")
    }
    
    //Viewがメモリに読み込まれた後に１度だけ呼ばれる
    override func viewDidLoad() {
        super.viewDidLoad()
        print("②ViewController - viewDidLoad")
    }

    //Viewが表示される前に呼ばれる
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("③ViewController - viewWillAppear")
    }
    
    //ViewがSubviewをレイアウトする前に呼ばれる
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("④ViewController - viewWillLayoutSubviews")
    }
    
    //ViewがSubviewをレイアウトした後に呼ばれる
    //AutoLayoutの正確なframeを取得できるのはここから
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("⑤ViewController - viewDidLayoutSubviews")
    }

    //Viewが表示された後に呼ばれる
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("⑥ViewController - viewDidAppear")
    }
    
    //Viewが消える前に呼ばれる
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("⑦ViewController - viewWillDisappear")
    }

    //Viewが消えた後に呼ばれる
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("⑧ViewController - viewDidDisappear")
    }

}

