//___FILEHEADER___

import Fluent

struct Create___FILEBASENAME___: AsyncMigration {
    
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("___VARIABLE_productName___")
            .id()
            .create()
    }
    
    func revert(on database: FluentKit.Database) async throws {
        try await database.schema("___VARIABLE_productName___").delete()
    }
    
}

public func ___VARIABLE_productName___Migrate(migrate: Migrations) {
    migrate.add(Create___FILEBASENAME___())
}
