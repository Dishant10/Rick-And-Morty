//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Dishant Nagpal on 20/08/24.
//

import Foundation
import UIKit


final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Character"
        
        let request = RMRequest(endPoint:  .character)
        
        print(request.url)
    }
    
}
