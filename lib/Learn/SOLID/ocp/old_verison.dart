enum EmployeeType { fullTime, contractor, intern }

class Employee {
  final String name;
  final EmployeeType employeeType;
  final double rate;

  const Employee({
    required this.name,
    required this.employeeType,
    required this.rate,
  });
}

class PayrollCalculator {
  double calculatePay(Employee employee) {
    if (employee.employeeType == EmployeeType.fullTime) {
      return employee.rate * 40;
    } else if (employee.employeeType == EmployeeType.contractor) {
      return employee.rate * 20;
    } else {
      return employee.rate * 10;
    }
  }
}
