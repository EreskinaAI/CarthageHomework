//
//  ViewController.swift
//  CarthageUsing
//
//  Created by Анна Ереськина on 13.06.2021.
//

import UIKit
import FeaturesEA

class ViewController: UIViewController {
    
    private let imageView = UIImageView(frame: UIScreen.main.bounds)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        
        // Использование метода из созданного фреймворка
        Networking.loadImage(from: URL(string: "https://spectrum.ru/images/dynamic/img55289.jpg")) { [ weak self ] data in
            guard let data = data else { return }
            self?.imageView.image = UIImage(data: data)
        }
    }
}

