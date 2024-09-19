//
//  UIImageView.swift
//  APITest
//
//  Created by GoodDamn on 19/09/2024.
//

import Foundation
import UIKit

extension UIImageView {
    
    func loadUrl(
        string: String
    ) {
        guard let url = URL(
            string: string
        ) else {
            return
        }
        
        URLSession.shared.dataTask(
            with: URLRequest(
                url: url
            )
        ) { [weak self] data, response, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            let image = UIImage(
                data: data
            )
            DispatchQueue.main.async {
                self?.image = image
            }
            
        }.resume()
        
    }
    
}
