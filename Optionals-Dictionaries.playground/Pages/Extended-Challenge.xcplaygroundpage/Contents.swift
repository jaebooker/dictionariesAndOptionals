/*:
 ![Make School Banner](./swift_banner.png)
 # Dictionaries and Optionals Extended Challenge
 
 ## A more robust contact book
 
 In this exercise, we will extend our previous challenge code to be more robust.
 
 ### Extended challenge
 
 Now that we have some basic code, it's time to "refactor" it!
 
 1. Create a `ContactBook` class. It should have the same functionality as the previous challenge, including `addContact`, `findContact`, `updateContact`, `deleteContact`, and `allContacts` methods.
 1. Create a `ContactDetails` class. Replace your values with this class and update your methods accordingly. You'll want to update what they print out to make sense. We're going to leave this pretty open ended for you but here are some other values to consider: home phone, cell phone, email, Facebook profile, LinkedIn profile. How will you store these? Maybe you should use optionals... hint hint ;)
 1. Create a few `ContactBook` objects and add data to them. Test them out!
 
 - callout(Additional Challenge): Try implementing a favorite contacts feature in `ContactBook`. All these contacts should be accessable via the normal methods but you should also include a new `favoriteContacts` method that only prints out your favorites!
 
 */
class ContactBook {
    var contacts: [String: String] = [:]
    
    //2
    init(contacts: [String: String]) {
        // 3
        self.contacts = contacts
    }
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
}
class ContactDetails {
    var facebook: [String: String] = [:]
    func addFacebook(name: String, url: String) {
        facebook[name] = url
        print("\(name) has been added to your facebook.")
    }
    func findFacebook(name: String){
        for i in facebook.keys {
            if i == name {
                print("Found \(name)!")
            } else {
                print("Name not found!")
            }
        }
    }
    func updateFacebook(name: String, url: String) {
        for i in facebook.keys {
            if i == name {
                facebook[name] = url
            } else {
                print("Name not found!")
            }
        }
    }
    func deleteContact(name: String){
        for i in facebook.keys {
            if i == name {
                facebook[name] = nil
            } else {
                print("Name not found!")
            }
        }
    }
    func allContacts(){
        for i in facebook.keys {
            print(i)
        }
    }
}
var contact1 = ContactBook(contacts: ["Larry": "555-666"])
var contac2 = ContactBook(contacts: ["Louis": "666-666"])











/*:
 [Previous](@prev)
 */
