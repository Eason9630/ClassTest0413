//
//  ShowViewController.swift
//  ClassTest0413
//
//  Created by 林祔利 on 2023/4/13.
//

import UIKit

class ShowViewController: UIViewController {

    let player:Player
    
    init?(coder: NSCoder, player: Player) {
    self.player = player
    super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var PlayerImage: UIImageView!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        PlayerImage.image = UIImage(named: player.imageName)
        nameLabel.text = player.name
        heightLabel.text = "\(player.hieght)"
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
