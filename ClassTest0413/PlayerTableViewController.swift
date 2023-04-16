//
//  PlayerTableViewController.swift
//  ClassTest0413
//
//  Created by 林祔利 on 2023/4/13.
//

import UIKit

class PlayerTableViewController: UITableViewController {

    let players = [
        Player(name: "James", hieght: 206, imageName: "james"),
        Player(name: "Kobe", hieght: 198, imageName: "kobe"),
        Player(name: "Harden", hieght: 197, imageName: "哈登"),
        Player(name: "James1", hieght: 206, imageName: "james"),
        Player(name: "Kobe1", hieght: 198, imageName: "kobe"),
        Player(name: "Harden1", hieght: 197, imageName: "哈登"),
        Player(name: "James2", hieght: 206, imageName: "james"),
        Player(name: "Kobe2", hieght: 198, imageName: "kobe"),
        Player(name: "Harden3", hieght: 197, imageName: "哈登"),
        Player(name: "James4", hieght: 206, imageName: "james"),
        Player(name: "Kobe4", hieght: 198, imageName: "kobe"),
        Player(name: "Harden4", hieght: 197, imageName: "哈登")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    //會有多少 Section，不設定就為1
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    //有多少 Row ，通常會使用 Array的數量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    //傳資料給 ShowViewController
    @IBSegueAction func showDetail(_ coder: NSCoder) -> ShowViewController? {
        //使用 guard let
        guard let row = tableView.indexPathForSelectedRow?.row else { return nil}
        return ShowViewController(coder: coder, player: players[row])
        //使用 if let 寫法
//        if let row = tableView.indexPathForSelectedRow?.row{
//            return ShowViewController(coder: coder, player: players[row])
//        }else{
//            return nil
//        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PlayerTableViewCell.result, for: indexPath) as! PlayerTableViewCell
        
        let player = players[indexPath.row]
        cell.nameLabel.text = player.name
        cell.imageName.image = UIImage(named: player.imageName)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
