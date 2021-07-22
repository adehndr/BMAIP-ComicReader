//
//  DetailViewController.swift
//  ComicReader
//
//  Created by Ade Hendra on 20/07/21.
//  Copyright © 2021 Organisasi Berbudaya. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameComic: UILabel!
    @IBOutlet weak var photoComic: UIImageView!
    @IBOutlet weak var decComic: UILabel!
    
    var comic : Comic?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = comic {
            nameComic.text = result.title
            photoComic.image = result.photo
            decComic.text = result.description
            
        }
        
    }
    
    
    
}
