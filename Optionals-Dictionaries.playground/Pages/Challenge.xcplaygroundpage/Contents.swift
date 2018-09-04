var contacts: [String: String] = [:]
func addContact(name: String, phoneNumber: String) {
    contacts[name] = phoneNumber
    print("\(name) has been added to your phone book.")
}
func findContact(name: String){
    for i in contacts.keys {
        if i == name {
            print("Found \(name)!")
        } else {
            print("Name not found!")
        }
    }
}
func updateContact(name: String, phoneNumber: String) {
    for i in contacts.keys {
        if i == name {
            contacts[name] = phoneNumber
        } else {
            print("Name not found!")
        }
    }
}
func deleteContact(name: String){
    for i in contacts.keys {
        if i == name {
            contacts[name] = nil
        } else {
            print("Name not found!")
        }
    }
}
func allContacts(){
    for i in contacts.keys {
        print(i)
    }
}
addContact(name: "Jack Kirby", phoneNumber: "555")
addContact(name: "Pierre Kirby", phoneNumber: "666")
updateContact(name: "Jack Kirby", phoneNumber: "666")
allContacts()
findContact(name: "Bruno Mattei")
deleteContact(name: "Jack Kirby")
allContacts()









/*:
 [Previous](@prev) | [Next](@next)
 */
