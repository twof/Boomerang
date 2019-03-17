import Vapor

public struct BoomerangMiddleware: Middleware, Service {
    private let callback: (Request, Logger) -> ()
    
    public init(callback: @escaping (Request, Logger) -> ()) {
        self.callback = callback
    }
    
    public func respond(
        to request: Request,
        chainingTo next: Responder
    ) throws -> EventLoopFuture<Response> {
        let logger = try request.make(Logger.self)
        
        callback(request, logger)
        
        return try next.respond(to: request)
    }
}
