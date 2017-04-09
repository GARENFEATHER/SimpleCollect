//
//  FriendTableViewController.swift
//  SimpleCollect
//
//  Created by Apple on 2017/4/8.
//  Copyright © 2017年 NJU. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController {
    var friends=[Friend]()
    //var ableList: [Int:Bool] = [:]
    
    private func loadTestFriendMessage() {
        let photo1=#imageLiteral(resourceName: "default1")
        let photo2=#imageLiteral(resourceName: "default2")
        guard let friend1=Friend(name: "sos·mocal", photo: photo1, mood: 0.0) else {
            fatalError("First sample error")
        }
        guard let friend2=Friend(name: "mikumo·kirishima", photo: photo2, mood: 0.0) else {
            fatalError("First sample error")
        }
        friends+=[friend1,friend2]
        //ableList=[0:false, 1:true]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadTestFriendMessage()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="FriendTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? FriendTableViewCell else {
            fatalError("instance error")
        }
        let friend=friends[indexPath.row]
        cell.nameLabel.text=friend.name
        cell.smallPhotoView.image=friend.photo
        //cell.ableToSeeSwitch.isOn=ableList[indexPath.row]!
        cell.descipttionLabel.text=(" \(String(describing: friend.gender)) && \(friend.mood)!")
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
