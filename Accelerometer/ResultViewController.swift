//
//  ResultViewController.swift
//  Accelerometer
//
//  Created by 伊藤明孝 on 2020/09/20.
//

import UIKit

class ResultViewController: UIViewController {

    
    var accelerationX: Double!
    var accelerationY: Double!
    
    @IBOutlet var label: UILabel!
    @IBOutlet var Ylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result: Double = fabs(accelerationX*100)
        label.text = String(format: "%.1f°",result)
        
        let Yresult: Double = fabs(accelerationY*100)
        Ylabel.text = String(format: "%.1f°",Yresult)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
