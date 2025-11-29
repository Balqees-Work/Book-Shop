abstract class Payable {
  double calculatePay();
}

class FullTimeEmployee implements Payable {
  final double monthlySalary;

  const FullTimeEmployee(this.monthlySalary);
  @override
  double calculatePay() => monthlySalary;
}

class Contractor implements Payable {
  final double hourlyRate;
  final double hoursWorked;

  Contractor(this.hourlyRate, this.hoursWorked);

  @override
  double calculatePay() => hourlyRate * hoursWorked; // Specific logic
}

class Intern implements Payable {
  final double stipend;

  Intern(this.stipend);

  @override
  double calculatePay() => stipend * 0.9; // Specific logic (stipend minus tax)
}
