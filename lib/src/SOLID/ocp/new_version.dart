// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Payable {
  double calculatePay();
}

class Employee {
  final String id;
  final String name;
  final DateTime hireDate;

  const Employee({
    required this.id,
    required this.name,
    required this.hireDate,
  });

  // Common method that all employees might use

  @override
  String toString() => 'Employee(id: $id, name: $name, hireDate: $hireDate)';
}

class FullTimeEmployee extends Employee implements Payable {
  // Developer-specific fields
  final double monthlySalary;

  // FullTimeEmployee(
  //   String id,
  //   String name,
  //   DateTime hireDate,
  //   this.monthlySalary,
  // ) : super(id: id, name: name, hireDate: hireDate);

  FullTimeEmployee({
    required super.id,
    required super.name,
    required super.hireDate,
    required this.monthlySalary,
  });

  @override
  double calculatePay() => monthlySalary; // Developer-specific pay logic
}

FullTimeEmployee em1 = FullTimeEmployee(
  id: '5',
  name: 'name',
  hireDate: DateTime.now(),
  monthlySalary: 5.0,
);

class Contractor extends Employee implements Payable {
  final double hourlyRate;
  final double hoursWorked;

  Contractor({
    required super.id,
    required super.name,
    required super.hireDate,
    required this.hourlyRate,
    required this.hoursWorked,
  });

  @override
  double calculatePay() => hourlyRate * hoursWorked; // Specific logic
}

class Intern extends Employee implements Payable {
  final double stipend;

  Intern({
    required super.id,
    required super.name,
    required super.hireDate,
    required this.stipend,
  });

  @override
  double calculatePay() => stipend * 0.9; // Specific logic (stipend minus tax)
}
