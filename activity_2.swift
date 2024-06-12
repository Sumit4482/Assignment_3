class Person{
  var name: String?
  var age: Int?
  var id: Int?

  init(name: String?, age: Int?, id: Int?){
    self.name = name;
    self.age = age;
    self.id = id;
  }
  
}

var person1 = Person(name: nil, age: 21, id: 1)
var person2 = Person(name: "Atharva", age: 21, id: nil)
var person3 = Person(name: "Arya", age: 21, id: 4)
var person4 = Person(name: "Ayush", age: nil, id: 2)


var array = [person1, person2, person3, person4]

var arrayNil = [Person]()
var arrayNotNil = [Person]()


for i in array{
  if(i.id == nil || i.age == nil || i.name == nil){
    arrayNil.append(i)
    
  }else{
    arrayNotNil.append(i)
  }
}


print("Array with Nil Values :")
for i in arrayNil{
  print(i.name ?? "NO Name", i.age ?? -1, i.id ?? -1, separator: " ")
}

print("Arrray with Non Nil Values :")
for i in arrayNotNil{
  print(i.name ?? "NO Name", i.age ?? -1, i.id ?? -1, separator: " ")
}
