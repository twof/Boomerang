# Boomerang

Boomerang is a middleware package that allows configurable logging of incoming requests.

```swift
// Request Logger
let boomerangMiddleware = BoomerangMiddleware { (req, logger) in
    logger.info("Incoming request at \(req.http.method.string) \(req.http.urlString)")
}
services.register(boomerangMiddleware)
middlewares.use(BoomerangMiddleware.self)
```
