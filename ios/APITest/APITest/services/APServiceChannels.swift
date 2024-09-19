//
//  APServiceChannels.swift
//  APITest
//
//  Created by GoodDamn on 19/09/2024.
//

import Foundation

final class APServiceChannels {
    
    weak var delegate: APDelegateOnGetChannels? = nil
    
    func getChannelsAsync() {
        
        guard let url = URL(
            string: "https://damntv.ru/api/channels"
        ) else {
            return
        }
        
        let request = URLRequest(
            url: url
        )
        
        URLSession.shared.dataTask(
            with: request
        ) { [weak self] data, response, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            let decoder = JSONDecoder()
            guard let channels = try? decoder.decode(
                APModelChannels.self,
                from: data
            ) else {
                return
            }
            
            DispatchQueue.main.async {
                [weak self] in
                self?.delegate?.onGetChannels(
                    data: channels.channels
                )
            }
            
        }
        
    }
    
    
}
