//
//  APViewControllerDetails.swift
//  APITest
//
//  Created by GoodDamn on 19/09/2024.
//

import Foundation
import UIKit

final class APViewControllerDetails
: UIViewController {
    
    var channelId: Int? = nil
    
    private let mServiceDetails = APServiceChannels()
    
    private var mLabelDesc: UILabel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mLabelDesc = UILabel(
            frame: view.frame
        )
        
        mLabelDesc?.numberOfLines = 0
        
        if let id = channelId {
            mServiceDetails.delegateDetails = self
            mServiceDetails.getChannelDetailsAsync(
                id: id
            )
        }
    }
    
}

extension APViewControllerList
: APDelegateOnGetChannelDetails {
    
    func onGetChannelDetails(
        data: APModelChannelDetails
    ) {
        mLabelDesc?.text = data.description
    }
    
}
