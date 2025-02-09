//
//  GameModel.swift
//  Catalog
//
//  Created by Fachmi Dimas Ardhana on 09/02/25.
//

import Foundation

public struct GameModel: Equatable, Identifiable {
    public let id: Int
    public let name: String?
    public let released: String?
    public let backgroundImage: String?
    public let rating: Double?
    public let genres: [Genre]?
    public let publishers: [Publisher]?
    public let description: String?
    public let alternativeNames: [String]?
    
    public init(
        id: Int,
        name: String?,
        released: String?,
        backgroundImage: String?,
        rating: Double?,
        genres: [Genre]?,
        publishers: [Publisher]?,
        description: String?,
        alternativeNames: [String]?
    ) {
        self.id = id
        self.name = name
        self.released = released
        self.backgroundImage = backgroundImage
        self.rating = rating
        self.genres = genres
        self.publishers = publishers
        self.description = description
        self.alternativeNames = alternativeNames
    }
    
}

public struct Genre: Equatable {
    public let name: String?
}

public struct Publisher: Equatable {
    public let name: String?
}
