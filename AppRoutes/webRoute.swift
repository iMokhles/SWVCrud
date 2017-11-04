import Vapor

final class webRoute: RouteCollection {
    let view: ViewRenderer
    init(_ view: ViewRenderer) {
        self.view = view
    }

    func build(_ builder: RouteBuilder) throws {
        /// GET /
        builder.get { req in
            return try self.view.make("welcome")
        }

        builder.get("/admin/dashboard", handler: AdminController(view).dashboard)
        

    }
}
