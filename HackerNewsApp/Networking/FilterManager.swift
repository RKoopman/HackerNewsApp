//
//  FilterManager.swift
//  HackerNewsApp
//
//  Created by R K on 8/29/22.
//

import Foundation
import UIKit

enum FilterType {
    case frontPage, latest, apple, google, arVr, fuboTV
}


protocol FilterProtocol: AnyObject {
    func setupButton(for type: FilterType) -> FilterButton
}


final class FilterManager: FilterProtocol {
    
    static let shared = FilterManager()
    
    private init() {}
    
    func setupButton(for filterType: FilterType) -> FilterButton {
        
        switch filterType {
            case .frontPage:
                return FilterButton(buttonText: "Front Page", buttonURL: "https://hn.algolia.com/api/v1/search?tags=front_page")
            case .apple:
                return FilterButton(buttonText: "Apple", buttonURL: "https://hn.algolia.com/api/v1/search?query=apple&tags=story")
            case .google:
                return FilterButton(buttonText: "Google", buttonURL: "https://hn.algolia.com/api/v1/search?query=google&tags=story")
            case .latest:
                return FilterButton(buttonText: "Latest", buttonURL: "https://hn.algolia.com/api/v1/search_by_date?tags=story")
            case .arVr:
                return FilterButton(buttonText: "AR/VR", buttonURL: "https://hn.algolia.com/api/v1/search?query=AR-VR&tags=story")
            case .fuboTV:
                return FilterButton(buttonText: "fuboTV", buttonURL: "https://hn.algolia.com/api/v1/search?query=fuboTV&tags=story")
        }
    }
}
