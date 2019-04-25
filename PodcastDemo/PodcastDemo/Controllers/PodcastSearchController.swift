//
//  PodcastSearchController.swift
//  PodcastDemo
//
//  Created by Jackie on 4/23/19.
//  Copyright © 2019 LAS. All rights reserved.
//

import UIKit


class PodcastSearchController: UITableViewController {
    
    let podcasts = [
        Podcast(name: "Lets Build That App", artistName: "Brian Voong"),
        Podcast(name: "Some Podcast", artistName: "Some Author"),

        ]
    
    
    let cellId = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. register a cell for a our tableview promatically
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let podcast = self.podcasts[indexPath.row]
        
        cell.textLabel?.text = "\(podcast.name)\n\(podcast.artistName)"
        cell.textLabel?.numberOfLines = -1
        return cell
    }
    
}
