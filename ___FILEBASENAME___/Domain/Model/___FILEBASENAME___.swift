//___FILEHEADER___

import Fluent
import Vapor

final class ___FILEBASENAMEASIDENTIFIER___: Model, Content {
    
    static let schema = "___VARIABLE_productName___"
    
    @ID(key: .id)
    var id: UUID?

    <#Other fields of class#>
    
    // When this ___VARIABLE_productName___ was created.
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?
    
    // When this ___VARIABLE_productName___ was last updated.
    @Timestamp(key: "updated_at", on: .update)
    var updatedAt: Date?
    
    init() { }
}
