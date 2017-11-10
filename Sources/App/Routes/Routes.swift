
extension Droplet {
    func setupRoutes() throws {
        get("foodpicker") { req in
            
            let options: Array<String> =
                          ["4€ Pizza/Pasta",
                           "6€ Indian rice plase",
                           "6€ Quesadilla",
                           "6€ Polish Pierogi",
                           "5€ Kebab",
                           "6€ Burgers",
                           "0€ Office Noodles",
                           "0€ Office Fridge",
                           "-€ No food today"
                           ]
            
            return options[Int(arc4random_uniform(UInt32(options.count)))]
        }
    }
}
