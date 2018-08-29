//
//  ViewController.swift
//  SkiScore
//
//  Created by Alex Rapier on 28/08/2018.
//  Copyright © 2018 AlexRapier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var sortPicker: UIButton!
    @IBOutlet weak var clearFiltersButton: UIButton!
    
    var resortArray = [ResortObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearFiltersButton.layer.borderColor = UIColor.init(red: 255/255, green: 73/255, blue: 72/255, alpha: 1.0).cgColor
        
        sortPicker.layer.borderColor = UIColor.gray.cgColor
        clearFiltersButton.layer.borderWidth = 2
        sortPicker.layer.borderWidth = 2
        // Do any additional setup after loading the view, typically from a nib.
        
        let alpImage = UIImage.init(named: "alp d'heuz.jpg")
        let coronetPeakImage = UIImage.init(named: "Coronet-Peak2.jpg")
        let plagneImage = UIImage.init(named: "la plagne.jpg")
        let stAntonImage = UIImage.init(named: "st anton.jpg")
        
        let heuz: ResortObject = ResortObject.init(name: "Alpe d'heuz", country: "France", image: alpImage!, ranking: "1", temperature: "🌨 16ºC", cost: "$141 / mo", powder: "❄ 0 cm")
        
        let whistler: ResortObject = ResortObject.init(name: "Coronet Peak ", country: "New Zealand", image: coronetPeakImage!, ranking: "2", temperature: "🌨 -1ºC", cost: "$221 / mo", powder: "❄ 100 cm")
        
        let laPlagne: ResortObject = ResortObject.init(name: "La Plagne", country: "France", image: plagneImage!, ranking: "3", temperature: "☀ 16ºC", cost: "$252 / mo", powder: "❄ 0 cm")
        
        let stAnton: ResortObject = ResortObject.init(name: "St Anton, Arlberg", country: "Austria", image: stAntonImage!, ranking: "4", temperature: "☀ 15ºC", cost: "$324", powder: "❄ 0 cm")
        
        let heuz2: ResortObject = ResortObject.init(name: "Alpe d'heuz", country: "France", image: alpImage!, ranking: "1", temperature: "🌨 16ºC", cost: "$141 / mo", powder: "❄ 0 cm")
        
        let whistler2: ResortObject = ResortObject.init(name: "Coronet Peak ", country: "New Zealand", image: coronetPeakImage!, ranking: "2", temperature: "🌨 -1ºC", cost: "$221 / mo", powder: "❄ 100 cm")
        
        let laPlagne2: ResortObject = ResortObject.init(name: "La Plagne", country: "France", image: plagneImage!, ranking: "3", temperature: "☀ 16ºC", cost: "$252 / mo", powder: "❄ 0 cm")
        
        let stAnton2: ResortObject = ResortObject.init(name: "St Anton, Arlberg", country: "Austria", image: stAntonImage!, ranking: "4", temperature: "☀ 15ºC", cost: "$324", powder: "❄ 0 cm")
        
        let heuz3: ResortObject = ResortObject.init(name: "Alpe d'heuz", country: "France", image: alpImage!, ranking: "1", temperature: "🌨 16ºC", cost: "$141 / mo", powder: "❄ 0 cm")
        
        let whistler3: ResortObject = ResortObject.init(name: "Coronet Peak ", country: "New Zealand", image: coronetPeakImage!, ranking: "2", temperature: "🌨 -1ºC", cost: "$221 / mo", powder: "❄ 100 cm")
        
        let laPlagne3: ResortObject = ResortObject.init(name: "La Plagne", country: "France", image: plagneImage!, ranking: "3", temperature: "☀ 16ºC", cost: "$252 / mo", powder: "❄ 0 cm")
        
        let stAnton3: ResortObject = ResortObject.init(name: "St Anton, Arlberg", country: "Austria", image: stAntonImage!, ranking: "4", temperature: "☀ 15ºC", cost: "$324", powder: "❄ 0 cm")
        
        resortArray.append(heuz)
        resortArray.append(whistler)
        resortArray.append(laPlagne)
        resortArray.append(stAnton)
        resortArray.append(heuz2)
        resortArray.append(whistler2)
        resortArray.append(laPlagne2)
        resortArray.append(stAnton2)
        resortArray.append(heuz3)
        resortArray.append(whistler3)
        resortArray.append(laPlagne3)
        resortArray.append(stAnton3)
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return resortArray.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell : ResortCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "resortCollectionView", for: indexPath) as! ResortCollectionViewCell
        
        cell.layer.cornerRadius = 3
        
        let currentResort = resortArray[indexPath.row]
        
        cell.resortName.text = currentResort.resortName
        cell.resortImage.image = currentResort.image!
        cell.resortPowder.text = currentResort.powder
        cell.resortPricing.text = currentResort.cost
        cell.resortWeather.text = currentResort.temperature
        cell.resortRanking.text = currentResort.ranking
        cell.resortCountry.text = currentResort.country
        
        return cell
        
    }
}

