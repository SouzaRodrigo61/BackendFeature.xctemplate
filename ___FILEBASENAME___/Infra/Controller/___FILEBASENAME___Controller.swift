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

    func index(req: Request) async throws -> [___VARIABLE_productName___] {
        let result = await execute(of: req, with: .list___VARIABLE_productName___)
        
        switch result {
        case .success(let data):
            return data
        default:
            throw Abort(.badRequest)
        }
    }
    
    func findMany(req: Request) async throws -> [___VARIABLE_productName___] {
        let result = await execute(of: req, with: .findMany___VARIABLE_productName___)
       
        switch result {
        case .success(let data):
            return data
        default:
            throw Abort(.badRequest)
        }
    }
    
    func findById(req: Request) async throws -> ___VARIABLE_productName___ {
        let result = await execute(of: req, with: .findById___VARIABLE_productName___)
            
        switch result {
        case .success(let data):
            return data
        default:
            throw Abort(.badRequest)
        }
    }
    
    func create(req: Request) async throws -> ___VARIABLE_productName___ {
        let result = await execute(of: req, with: .create___VARIABLE_productName___)
        
        switch result {
        case .success(let data):
            return data
        default:
            throw Abort(.badRequest)
        }
    }
    
    func update(req: Request) async throws -> ___VARIABLE_productName___ {
        let result = await execute(of: req, with: .update___VARIABLE_productName___)
        
        switch result {
        case .success(let data):
            return data
        default:
            throw Abort(.badRequest)
        }
    }
    
    func delete(req: Request) async throws -> ___VARIABLE_productName___ {
        let result = await execute(of: req, with: .delete___VARIABLE_productName___)
        
        switch result {
        case .success(let data):
            return data
        default:
            throw Abort(.badRequest)
        }
    }
    
}