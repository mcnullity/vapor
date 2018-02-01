import Vapor

extension Droplet {
    func setupRoutes() throws {
    
//        get("view") { req in
//            return try self.view.make("myview")
//        }
//
//        get("bonus") { req in
//            return try self.view.make("mydataview", ["name": "Sai Omkaram"])
//        }
//
//        get("user") { req in
//            let list = try User.all()
//            return try self.view.make(
//                "userview", ["userlist": list.makeNode(in: nil)]
//            )
//        }
//
//        post("user") { req in
//            guard let username = req.data["username"]?.string else {
//
//                return Response(status: .badRequest)
//            }
//
//            let user = User(username: username)
//            try user.save()
//
//            return Response(redirect: "/user")
//        }
        
        let userController = UserController(drop: self)
        get("user", handler:userController.list)
        post("user", handler:userController.create)
        post("user", ":id", "update", handler: userController.update)
        post("user", ":id", "delete", handler: userController.delete)
    }
}
