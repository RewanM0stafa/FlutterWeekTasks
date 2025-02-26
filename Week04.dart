
import 'dart:math';
import 'dart:math';

abstract class Shape{
  double width,height;
  Shape(this.width,this.height);
  double area();

}

class Triangle extends Shape{
  Triangle(double width,double height):super(width,height);
  @override
  double area ()=>0.5*width*height;

}

class Rectangle extends Shape{
  Rectangle(double width,double height):super(width,height);
  @override
  double area ()=>width*height;

}


class Calculator{

  double summation(double num1, double num2) =>  num1 + num2;
  double subtraction(double num1, double num2) =>  (num1 - num2).abs();
  double multiplication(double num1, double num2) =>  num1 * num2;
  double division(double num1, double num2) =>
      num2 != 0 ? num1 / num2 : throw ArgumentError('Cannot divide by zero');
}

class Mother{
  String display()=> "Hello my daughter !"  ;
}

class Daughter extends Mother{
  String display()=> "Hello mum ! "  ;

}

class Animal {

  String name= "" ;
  int age= 0;
  void set_value(String name , int age){
    this.name=name;
    this.age=age;
  }

}

class Zebra extends Animal{
  Zebra();
  void display(){
    print("This zebra is called \"$name\" and it\'s $age years old");
    print("Zebras are native to Africa and have unique black-and-white stripes.");

  }
}

class Dolphin extends Animal{
  Dolphin();
  void display(){
    print("This dolphin is called \"$name\" and it\'s $age years old");
    print("Dolphins are highly intelligent marine mammals found in oceans worldwide.");

  }
}




class Company{
  List<Service> services=[];
  List<Client> clients=[];
  List<Employee> employees=[];

  addService(Service service){
    services.add(service);
  }

  addEmployee(Employee emp){
    employees.add(emp);
  }

  addClient(Client client){
    clients.add(client);
  }

}

class Service{
  String name,description;
  Service(this.name,this.description);
  Service.defaultService(this.name, this.description);
  void displayService() {
    print("Service: $name - $description");
  }
}
class Client extends Person{
  Service service ;
  Client(String name ,String contactInfo,int age,this.service ):super(name,contactInfo,age);

  void getService(){
    print("$name has requested the service: ${service.name}");
  }
}


class Employee extends Person{
  String job="";
  Employee(String name ,String contactInfo,int age, String job):super(name,contactInfo,age);
  void displayJOb() {
    print("Hello $name, your job is $job.");
  }
}

class Campaign {
  String name;
  Client client;
  List<Service> services;

  Campaign(this.name, this.client, this.services);

  void displayCampaign() {
    print("Campaign: $name");
    print("Client: ${client.name}");
    print("Services:");
    services.forEach((service) {
      print("- ${service.name}: ${service.description}");
    });
  }
}

class Person{
  String? name,contactInfo;
  int? age;
  Person(this.name,this.contactInfo,this.age);
}
