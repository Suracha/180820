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
	
	let dailyTasks = 
	[
		"Check all windows",
		"Check all doors",
		"Is the boiler fueled?",
		"Check the mailbox",
		"Empty trash containers",
		"If freezing, check water pipes",
		"Document \"strange and unusual\" occurrences"
	]
	
	let weeklyTasks = 
	[
		"Check inside all cabins",
		"Flush all lavatories in cabins",
		"Walk the perimeter of property"
	]
	
	let monthlyTasks = 
	[
		"Test security alarm",
		"Test motion detectors",
		"Test smoke alarms"
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
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int 
	{
        // #warning Incomplete implementation, return the number of rows
					
		var row = 0

		switch section
		{
			case 0:
				row = self.dailyTasks.count
				//return(self.dailyTasks.count)
			case 1:
				row = self.weeklyTasks.count
				//return(self.weeklyTasks.count)
			case 2:
				row = self.monthlyTasks.count
				//return(self.monthlyTasks.count)
			default:
				row = 0
		}
					
        return row
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
	{
        // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
	
		// let cell = UITableViewCell()
  		let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)

		// cell.textLabel?.text = "Item \(indexPath.row)"

		cell.layoutMargins.left = 48

		switch indexPath.section
		{
			case 0:
				cell.textLabel?.text = self.dailyTasks[indexPath.row]
			case 1:
				cell.textLabel?.text = self.weeklyTasks[indexPath.row]
			case 2:
				cell.textLabel?.text = self.monthlyTasks[indexPath.row]
			default:
				cell.textLabel?.text = ""
		}

        return cell
    }
	
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
	{
		var	title = ""
		
		switch section
		{
			case 0:
				title = "Daily Task"
				//return(self.dailyTasks.count)
			case 1:
				title = "Weekly Task"
				//return(self.weeklyTasks.count)
			case 2:
				title = "Monthly Task"
				//return(self.monthlyTasks.count)
			default:
				title = ""
		}
		
		return title
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
