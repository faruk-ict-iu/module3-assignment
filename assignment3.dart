void main() {
  Car car1 = Car("Tesla", "Model S", 2012);
  Car car2 = Car("BMW", "3 Series", 1975);
  Car car3 = Car("Audi", "A4", 2020);
  Car car4 = Car("Subaru", "Outback", 1994);

  car1.drive(13000.5);
  car2.drive(70000.6);
  car3.drive(1000.5);
  car4.drive(1200.5);


  print("\nCar 1:");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()}");

  print("\nCar 2:");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()}");

  print("\nCar 3:");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()}");

  print("\nCar 4:");
  print("Brand: ${car4.getBrand()}");
  print("Model: ${car4.getModel()}");
  print("Year: ${car4.getYear()}");
  print("Miles driven: ${car4.getMilesDriven()}");
  print("Age: ${car4.getAge()}");

  print("\nTotal number of Car objects created: ${Car.numberOfCars}");
}

class Car {
  static int numberOfCars = 0;
  String brand;
  String model;
  int year;
  double milesDriven = 0.0;

  Car(this.brand, this.model, this.year) {
    this.milesDriven = 0.0;
    Car.numberOfCars++;
  }

  void drive(double miles) {
    this.milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge() {
    return DateTime.now().year - this.year;
  }
}

