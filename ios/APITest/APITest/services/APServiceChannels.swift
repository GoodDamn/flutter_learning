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
            print("url error")
            return
        }
        
        let request = URLRequest(
            url: url
        )
        
        print("requesting...")
        
        URLSession.shared.dataTask(
            with: request
        ) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let channels = try decoder.decode(
                    APModelChannels.self,
                    from: data
                )
                DispatchQueue.main.async { [weak self] in
                    self?.delegate?.onGetChannels(
                        data: channels.channels
                    )
                }
            } catch {
                print("ERROR: ", error)
            }
            
            
            
        }.resume()
        
    }
    
    deinit {
        print("APServiceChannels: deinit")
    }
}
