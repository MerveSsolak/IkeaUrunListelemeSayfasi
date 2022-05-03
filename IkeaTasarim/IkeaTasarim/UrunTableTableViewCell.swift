//
//  UrunTableTableViewCell.swift
//  IkeaTasarim
//
//  Created by Merve Solak on 1.05.2022.
//

import UIKit

class UrunTableTableViewCell: UITableViewCell {

    @IBOutlet weak var labelArkaPlanFiyat: UILabel!
    @IBOutlet weak var hucreArkaPlan: UIView!
    @IBOutlet weak var imageSandalye: UIImageView!
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var labelUrunAçiklama: UILabel!
    @IBOutlet weak var labelFiyat: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func buttonFiyat(_ sender: Any) {
    }
}



