//
//  DemoTableViewController.swift
//  UIKitBasics
//
//  Created by Sameer  on 23/08/25.
//

import UIKit

class DemoTableViewController: UIViewController, UITableViewDataSource {
    
    private let tableView = UITableView()
    private let favApps: [String] = ["Spotify", "Apple Music", "YouTube", "Netflix", "Prime Video", "WhatsApp", "Instagram"]
    private let icons: [String] = ["heart.fill", "house.fill", "music.note.list", "gear", "tv.fill", "bubble.left.and.bubble.right", "person.circle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Applications"
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "AppsCell")
        
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favApps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppsCell", for: indexPath)
        var configuration = cell.defaultContentConfiguration()
        configuration.image = UIImage(systemName: icons[indexPath.row])
        configuration.text = favApps[indexPath.row]
        cell.contentConfiguration = configuration
        return cell
    }
}

extension DemoTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(favApps[indexPath.row])")
    }
}

