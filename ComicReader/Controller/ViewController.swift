//
//  ViewController.swift
//  ComicReader
//
//  Created by Ade Hendra on 20/07/21.
//  Copyright © 2021 Organisasi Berbudaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var comicTableView: UITableView!
    @IBOutlet weak var profileScene: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        comicTableView.dataSource = self
        self.navigationItem.title = "Comic List"
        comicTableView.delegate = self
        comicTableView.register(UINib(nibName: "ComicTableViewCell", bundle: nil), forCellReuseIdentifier: "ComicCell")


    }


}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        comics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ComicCell", for: indexPath) as? ComicTableViewCell {
            let comic = comics[indexPath.row]
            cell.titleComic.text = comic.title
            cell.descComic.text = comic.description
            cell.photoComic.image = comic.photo

            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil
        )
        detail.comic = comics[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
