//___FILEHEADER___

import Foundation
import Vapor

public func routes___VARIABLE_productName___(_ app: Application) throws {
    try app.register(collection: ___VARIABLE_productName___Controller())
}

struct ___FILEBASENAME___: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let router = routes.grouped("___VARIABLE_productName___")
        router.get(use: index)
    }

    func index(req: Request) async throws -> [___VARIABLE_productName___] {
        return await execute(of: req, with: .list)
    }
    
}