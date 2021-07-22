//
//  ComicTableViewCell.swift
//  ComicReader
//
//  Created by Ade Hendra on 20/07/21.
//  Copyright © 2021 Organisasi Berbudaya. All rights reserved.
//

import UIKit

class ComicTableViewCell: UITableViewCell {

    @IBOutlet weak var photoComic: UIImageView!
    @IBOutlet weak var titleComic: UILabel!
    @IBOutlet weak var descComic: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
