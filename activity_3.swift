print("Printing Even Numbers by using closed range operator: ")
for i in 1...20{
  if i % 2 == 0{
    print(i)
  }
}

print("Printing Odd Numbers by using half range Operator: ")
for i in 1..<21{
  if i % 2 != 0{
    print(i)
  }
}
