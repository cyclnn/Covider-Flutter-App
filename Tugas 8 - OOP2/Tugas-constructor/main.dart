import 'employee.dart';

void main(List<String> args) {
  var data1 = new Employee.id(18102002);
  var data2 = new Employee.name("Irfan Akbari Habibi");
  var data3 = new Employee.department("Mobile Apps Developer");

  print(data1.id);
  print(data2.name);
  print(data3.department);
}
