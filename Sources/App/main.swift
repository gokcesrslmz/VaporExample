import Vapor

let drop = Droplet()

/*drop.get("/name",":name") { request in
    if let name = request.parameters["name"]?.string {
        return "I love you \(name)!"
    }
    return "Error retrieving parameters."
}*/

drop.post("name") { request in
    /*guard let name = request.json["name"].string else {
        throw Abort.badRequest
    }*/
    
    if let name = request.parameters["name"]?.string {
        return "Hello, \(name)!"
    }
    
    return "Error retrieving parameters."
   
}


drop.run()


