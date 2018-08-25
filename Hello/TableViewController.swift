//
//  TableViewController.swift
//  Hello
//
//  Created by Suracha S. on 8/21/18.
//  Copyright © 2018 Suracha S. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController 
{
	
	let oTasks: [String : [String]] =
	[
		
		"Daily Tasks" :
			[
				"Check all windows",
				"Check all doors",
				"Is the boiler fueled?",
				"Check the mailbox",
				"Empty trash containers",
				"If freezing, check water pipes",
				"Document \"strange and unusual\" occurrences"
			],
		
		"Weekly Tasks" :
			[
				"Check inside all cabins",
				"Flush all lavatories in cabins",
				"Walk the perimeter of property"
			],
		
		"Monthly Tasks" :
			[
				"Check inside all cabins",
				"Flush all lavatories in cabins",
				"Walk the perimeter of property"
			],
		
		"Annually Tasks" :
			[
				"A happy birthday party",
				"An aniversary evening",
				"Two weeks of travel"
			]
		
	]

	
    override func viewDidLoad() 
	{
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() 
	{
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int 
	{
        // #warning Incomplete implementation, return the number of sections
		
		return self.oTasks.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int 
	{
        // #warning Incomplete implementation, return the number of rows
		
		let sTitle: [String] = [String](self.oTasks.keys)
		
        return self.oTasks[sTitle[section]]!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
	{
        // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
	
		// let cell = UITableViewCell()
		// cell.textLabel?.text = "Item \(indexPath.row)"
		
		let oCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
		let sTexts: [[String]] = [[String]](self.oTasks.values)

		oCell.layoutMargins.left = 48
		oCell.textLabel?.text = sTexts[indexPath.section][indexPath.row]
		
        return oCell
    }
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
	{
		let sTitle: [String] = [String](self.oTasks.keys)
		
		return sTitle[section]
	}
	
/*
	override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
	{
		return 48.0
	}
*/

	override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
	{
		view.tintColor = UIColor.lightGray
		//  let header = view as! UITableViewHeaderFooterView
		//  header.textLabel?.textColor = UIColor.darkGray
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
	{
		print("you just selected row \(indexPath.row) on section \(indexPath.section)")
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
