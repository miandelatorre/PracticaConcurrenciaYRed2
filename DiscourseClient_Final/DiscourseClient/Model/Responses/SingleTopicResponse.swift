import Foundation

// TODO: Implementar aquí el modelo de la respuesta.
// Puedes echar un vistazo en https://docs.discourse.org

struct SingleTopicResponse: Codable {
    let id: Int
    let title: String
    let postsCount: Int
    let details: Details
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case postsCount = "posts_count"
        case details = "details"
    }
}

struct Details: Codable {
    let createdBy: CreatedBy
    let canDelete: Bool?

    enum CodingKeys: String, CodingKey {
        case createdBy = "created_by"
        case canDelete = "can_delete"
    }
}

struct CreatedBy: Codable {
    let username: String
    
    enum CodingKeys: String, CodingKey {
        case username = "username"
    }
}
