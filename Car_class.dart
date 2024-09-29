//Create a class in Dart that represents a `Car`
//with properties for `make`, `model`, and `year`, and a method to display its details.
void main() {
  car myCar1 = car('Tesla', 'Model S', 2020);
  myCar1.printcar();

}

class car {
  var make = '';
  var model = '';
  int? year = 0;
  car(Carmake, Carmodel, Caryear) {
    make = Carmake;
    model = Carmodel;
    year = Caryear;
  }

  printcar() {
    print('Make: $make');
    print('Model: $model');
    print('Year: $year');
  }
}
