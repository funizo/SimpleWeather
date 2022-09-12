//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 김세준 on 2022/09/09.
//

import UIKit

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var temparatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    let cities = ["Seoul", "Tokyo", "LA","Seattle"]
    let weathers = ["cloud.fill","sun.max.fill","wind",
    "cloud.sun.rain.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        
        weatherImageView.image =
        UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        
        temparatureLabel.text = "\(randomTemp)°"
        
        
    }
    

}
