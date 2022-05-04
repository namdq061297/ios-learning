//function

func test1(name: String){
    print( "hello \(name)")
}

test1(name:"nam")

func test2(a: Int, b: Int) -> Int {
    return a + b
}

test2(a: 1, b: 2)


//class

class Animal {
    var name = ""
    var age = 0
    
    func speak(){
        print("meow")
    }
}

class Dog: Animal{
    var color = ""
    func info(name: String){
        print("this is dog \(name) and has age: \(self.age)")
    }
    
    override func speak() {
        print("go go")
    }
}

var myDog = Dog()

myDog.name = "test"
myDog.age = 7
myDog.color = "red"
myDog.name
myDog.age
myDog.color
myDog.info(name:"test")
myDog.speak()

var hisDog = Dog()
myDog.name = "test1"

var myPet: Animal = Dog()
// optional

let test = myPet as? Dog
