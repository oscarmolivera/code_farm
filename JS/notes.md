
There's no exact counterpart to Java's getClass() in JavaScript. Mostly that's due to JavaScript being a prototype-based language, as opposed to Java being a class-based one. Depending on what you need getClass() for, there are several options in JavaScript:

typeof
instanceof
obj.constructor
func.prototype, proto.isPrototypeOf
A few examples:

function Foo() {}
var foo = new Foo();

typeof Foo;             // == "function"
typeof foo;             // == "object"

foo instanceof Foo;     // == true
foo.constructor.name;   // == "Foo"
Foo.name                // == "Foo"    

Foo.prototype.isPrototypeOf(foo);   // == true