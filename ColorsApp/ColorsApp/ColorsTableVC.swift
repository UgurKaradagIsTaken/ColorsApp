//
//  ColorsTableVC.swift
//  ColorsApp
//
//  Created by apple on 30.12.2022.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    enum cells {
        static let cell = "ColorCell"
    }
    enum segue {
        static let toDetail = "toColorsDetailVC"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
        
    }
    
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}
//override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
//     let something = segue.destination as! someViewController
//    something.aVariable = anotherVariable
//}
 

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.cell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: segue.toDetail , sender: color)
    }
        
    }



