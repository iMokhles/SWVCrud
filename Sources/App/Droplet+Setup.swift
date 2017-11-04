@_exported import Vapor

extension Droplet {
    public func setup() throws {
        let webRoutes = webRoute(view)
        let apiRoutes = apiRoute()
        try collection(webRoutes)
        try collection(apiRoutes)
    }
}
