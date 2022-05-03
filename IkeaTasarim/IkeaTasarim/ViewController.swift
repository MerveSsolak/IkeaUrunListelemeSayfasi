//
//  ViewController.swift
//  IkeaTasarim
//
//  Created by Merve Solak on 1.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kameraResimİmage: UIImageView!
    @IBOutlet weak var barkodİmage: UIImageView!
    @IBOutlet weak var tumResimlerimage: UIImageView!
    @IBOutlet weak var labelUrunSayisi: UILabel!
    @IBOutlet weak var searchText: UISearchBar!
    @IBOutlet weak var urunlerTableWiew: UITableView!
    
    var urunlerListe = [Urunler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urunlerTableWiew.delegate = self
        urunlerTableWiew.dataSource = self
        searchText.delegate = self
        
       let m1 = Urunler(urun_id: 1, urun_ad: "Mammut", urun_resim_ad: "cocukSandalyesi", urun_fiyat: 209, urun_aciklama: "çocuk sandalyesi,kırmızı")
        let m2 = Urunler(urun_id: 2, urun_ad: "Nisse", urun_resim_ad: "nisseSandalye", urun_fiyat:690,urun_aciklama: "katlanabilir sandalye,parlak beyaz ")
        let m3 = Urunler(urun_id: 3, urun_ad: "Stefan", urun_resim_ad: "stefanSandalye", urun_fiyat: 760, urun_aciklama: "sandalye, venge")
        let m4 = Urunler(urun_id: 4, urun_ad: "Torparö", urun_resim_ad: "torparöSandalye", urun_fiyat: 379, urun_aciklama: "ayarlanabilir sandalye ,beyaz-bej")
        urunlerListe.append(m1)
        urunlerListe.append(m2)
        urunlerListe.append(m3)
        urunlerListe.append(m4)
    }

    @IBAction func buttonİptal(_ sender: Any) {
    }

    @IBAction func buttonTümÜrünler(_ sender: Any) {
    }
    @IBAction func buttonÜrünKoduTarama(_ sender: Any) {
    }
    @IBAction func buttonGörselİleArama(_ sender: Any) {
    }
    
    @IBAction func buttonFiltrele(_ sender: Any) {
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(urunlerListe.count)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunlerListe[indexPath.row]
        func searchBar(_ searchBar: UISearchBar,
                       textDidChange searchText: String) {
            
         print("Arama Sonucu :\(searchText)")
    }
        let cell = tableView.dequeueReusableCell(withIdentifier: "urunHucre", for: indexPath) as! UrunTableTableViewCell
        
            cell.imageSandalye.image = UIImage(named: urun.urun_resim_ad!)
            cell.labelUrunAd.text = urun.urun_ad
            cell.labelUrunAçiklama.text = urun.urun_aciklama!
            cell.labelFiyat.text = "\(urun.urun_fiyat!) ₺"
            cell.labelUrunAçiklama.numberOfLines = 2
        
        
        
        return cell
    }
    
    
}

