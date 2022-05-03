//
//  File.swift
//  IkeaTasarim
//
//  Created by Merve Solak on 1.05.2022.
//

import Foundation

class Urunler {
    var urun_id:Int?
    var urun_ad:String?
    var urun_resim_ad:String?
    var urun_fiyat:Int?
    var urun_aciklama:String?
    
    init(urun_id:Int,urun_ad:String,urun_resim_ad:String,urun_fiyat:Int,urun_aciklama:String) {
        self.urun_id = urun_id
        self.urun_ad = urun_ad
        self.urun_resim_ad = urun_resim_ad
        self.urun_fiyat = urun_fiyat
        self.urun_aciklama = urun_aciklama
    
}
}
