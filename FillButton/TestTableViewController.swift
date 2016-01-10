//
//  TestTableViewController.swift
//  FillButton
//
//  Created by Matt Amerige on 1/10/16.
//  Copyright © 2016 Wubbyland. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {

  
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cellIdentifier = "Cell"
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? FillButtonTestCell
    
    return cell!
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let cell = tableView.cellForRowAtIndexPath(indexPath) as! FillButtonTestCell
    
    cell.fillButton.isFilled = !cell.fillButton.isFilled
    cell.fillButton.bounce()
  }
  
}
