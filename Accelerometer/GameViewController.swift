//
//  GameViewController.swift
//  Accelerometer
//
//  Created by 伊藤明孝 on 2020/09/20.
//

import UIKit
import CoreMotion

class GameViewController: UIViewController {

    
    @IBOutlet private weak var awaImageView: UIImageView!
    let motionManager = CMMotionManager()
    var accelerationX: Double?
    var accelerationY: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if motionManager.isAccelerometerAvailable {
            
            motionManager.accelerometerUpdateInterval = 0.01
            
            motionManager.startAccelerometerUpdates(to: OperationQueue.current!, withHandler: { (data,error) in
            self.accelerationX = (data?.acceleration.x)!
                self.awaImageView.center.x = self.awaImageView.center.x-CGFloat(self.accelerationX!*20)//間違いが出る可能性がある　！がaccelerationの後についている
            self.accelerationY = (data?.acceleration.y)!
                    self.awaImageView.center.y = self.awaImageView.center.y+CGFloat(self.accelerationY!*20)//間違いが出る可能性がある　！がaccelerationの後についている
           
        })
     }
    }
     
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?){
            let resultViewController:ResultViewController = segue.destination as! ResultViewController
            resultViewController.accelerationX = self.accelerationX
            resultViewController.accelerationY = self.accelerationY
        }
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
