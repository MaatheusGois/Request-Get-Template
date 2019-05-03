import UIKit


func makeGetCall(_ url: String) {
    //    let url = "YOUR_URL"
    
    
    var dishes = [String: Dish]()
    
    do {
        if let file = URL(string: url) {
            let data = try Data(contentsOf: file)
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            if let object = json as? [String: Any] {
                // json is a dictionary
                print(object)
            } else if let object = json as? [Any] {
                // json is an array
                for anItem in object as! [Dictionary<String, AnyObject>] {
                    print(anItem)
                    if ((anItem["name"] != nil) && (anItem["_id"] != nil)){
                        let dishName = anItem["name"] as! String
                        let dishPrice = anItem["price"] as! String
                        let dishID = anItem["_id"] as! String
                        
                        let dish = Dish(name: dishName, price: dishPrice ,id:dishID)
                        dishes[dishID] = dish
                        dishes[dishID]?.getString()
                    }
                }
            } else {
                print("JSON is invalid")
            }
        } else {
            print("no file")
        }
    } catch {
        print(error.localizedDescription)
    }
    
}


