//___FILEHEADER___

import Foundation
import Vapor

struct ___FILEBASENAME___: RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        let route = routes.grouped("___VARIABLE_productName___")
        route.get(use: index)
        route.post(use: create)
    }
    
    func index(req: Request) async throws -> [___VARIABLE_productName___] {
        return try await ___VARIABLE_productName___.query(on: req.db).all()
    }
    
    func create(req: Request) async throws -> ___VARIABLE_productName___ {
        let ___VARIABLE_productName___ = try req.content.decode(___VARIABLE_productName___.self)
        try await ___VARIABLE_productName___.save(on: req.db)
        return ___VARIABLE_productName___
    }
    
}
