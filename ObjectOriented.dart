void main() {
  int a = 10;
  //press control on int - > a whole code behind this
  print(a);
  // Animal A = Animal();
  Cat A1 = Cat();
  A1.printColor();
}

//Inheritance example
//two objects will be made
class Animal {
  var color = '';
  Animal() {}
}

class Cat extends Animal {
  printColor() {
    color = 'white';
    print(color);
  }
}

 //Pillars
  /*1. Abstraction
The class is incomplete-> needs smth to complete
*/

  /*2. Inheritance
    01 class used in multiple classes 
    1) Single inheritance
    2) Multiple inheritance
    3) Multilevel inheritance
    4) Hierarchical inheritance
    */

  /*3. Encapsulation
    A class which user can not access easily.
    Hidden logics
    */

  /*4. Polymorphism
    A class that plays multiple roles depends on use.
    */