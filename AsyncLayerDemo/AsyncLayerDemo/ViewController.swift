//
//  ViewController.swift
//  AsyncLayerDemo
//
//  Created by 李响 on 2019/1/15.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func switchChangedAction(_ sender: UISwitch) {
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let text = "(˶‾᷄ ⁻̫ ‾᷅˵) emoji: 🇹🇱🇰🇵🇨🇬🇰🇵🇬🇱🇱🇮🇲🇶🇬🇷🇬🇷🇭🇺🎃😵😼🤧💀👋🙀🙀👍😼👄👅👥👨🏾‍⚕️👨🏿‍🍳👨🏾‍⚕️🧚🏾‍♂️🧞‍♀️🧞‍♀️🧜‍♀️👨‍👩‍👦‍👦💑💏👫🙍🏻‍♀️👨‍👦‍👦🧵👗🧦🧢👢🧤🎩🧢🎓🐭🧳👛👜🐼🐨🐻🦊🦅🐒🐤🐗🕸🕷🦑🐟🐬🐳🐅🦍🍖🍟⚽️🏓🥅🥋🔨 (˶‾᷄ ⁻̫ ‾᷅˵) "
        cell.set(async: switchView.isOn)
        cell.set(text: text)
        return cell
    }
}
