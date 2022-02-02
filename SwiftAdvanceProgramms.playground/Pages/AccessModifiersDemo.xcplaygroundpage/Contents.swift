//Five Access Modifiers: Open, Public, Private, file-Private, Internal

//Example 1
class A {
    
    func disp() {
        print("This is class A")
    }
    
}

//Not allowed because by default class has internal access level class A is internal, so it’ll fail to compile when a is public(more access)
public var obj = A()
obj.disp()

private var obj1 = A()
obj1.disp()
var obj4 = obj1
obj4.disp()

//Example 2
open class B {
    
    func disp() {
        print("This is class B")
    }
    
}

public var obj3 = B()
public var obj5 = obj3
var obj6 = obj3
private var obj7 = obj3

obj5.disp()
obj6.disp()
obj7.disp()

//Example 3
private class C {
    
    func disp() {
        print("This is class C")
    }
    
}

private var obj8 = C()//It reqired private var
obj8.disp()

//Example 4
private class D {
    
    var x = 10
    private var x1 = 20
    
    private func disp() {
        print("Disp")
        print(E().y)
        
    }
    
}

private class E {
    
    var y = 10
    public var z = 15
    
    private func hello() {
        print("Hello")
        D().x
        //D().disp()//Inaccessible
    }
    
}




