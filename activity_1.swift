class Person{
  var name: String
  var age: Int
  var id: Int

  init(name: String, age: Int, id: Int){
    self.name = name
    self.age = age
    self.id = id
  }
  
}

var p1 = Person(name: "Sumit", age: 26, id: 1)
var p2 = Person(name: "Atharva", age: 27, id: 2)
var p3 = p1

print(p1===p2)

print(p3===p1)

var p4 = Person(name: "Sumit", age: 26, id: 1)
print(p1===p4)