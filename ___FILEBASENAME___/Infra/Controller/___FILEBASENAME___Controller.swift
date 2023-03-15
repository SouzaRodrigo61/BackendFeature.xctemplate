//___FILEHEADER___

import Foundation
import Vapor

public func routes___VARIABLE_productName___(_ app: Application) throws {
    try app.register(collection: ___VARIABLE_productName___Controller())
}

struct ___FILEBASENAME___: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let router = routes.grouped("Game")
        router.get(use: index)
        router.get("/many", use: findMany)
        router.get("/by_id", use: findById)
        router.post(use: create)
        router.put(use: update)
        router.delete(use: delete)
    }

    func index(req: Request) async throws -> [Game] {
        return await execute(of: req, with: .list)
    }
    
    func findMany(req: Request) async throws -> [Game] {
        return await execute(of: req, with: .findMany)
    }
    
    func findById(req: Request) async throws -> Game {
        return await execute(of: req, with: .findById)
    }
    
    func create(req: Request) async throws -> Game {
        return await execute(of: req, with: .create)
    }
    
    func update(req: Request) async throws -> Game {
        return await execute(of: req, with: .update)
    }
    
    func delete(req: Request) async throws -> Game {
        return await execute(of: req, with: .delete)
    }
    
}