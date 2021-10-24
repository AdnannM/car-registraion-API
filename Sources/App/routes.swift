import Fluent
import Vapor
import RoutingKit

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("home")
    }
    
    
//    func setupRoutes() throws {
//        app.get("person") { req  in
//
//            let adnann = Person(from: Person(id: 1, name: "Adnann", lastName: "Muratovic", dateOfBirth: "07-04-1992", jmbg: 123125513513, city: "Banja Luka"))
//
//            return adnann
//        }
//    }

//    app.get("person") { req  in
//
//        let adnann = Person(from: Person(id: 1, name: "Adnann", lastName: "Muratovic", dateOfBirth: "07-04-1992", jmbg: 123125513513, city: "Banja Luka"))
//
//        var json = JSON()
//        try json.set("name", adnann.name)
//        return adnann.name

    try app.register(collection: TodoController())
}


