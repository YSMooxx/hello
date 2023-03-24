// ignore_for_file: avoid_print

void main() { 
  Man w = Man();
  w.eat();
  Dog d = Dog();
  d.walk();
}

class Person {
  say() {
    print('say');
  }
}

mixin Eat {
  eat() {
    print('eat');
  }
}

mixin Walk {
  walk() {
    print('walk');
  }
}

mixin Code {
  code() {
    print('key');
  }
}

class Dog with Eat, Walk{}
class Man extends Person with Eat, Walk, Code{}
