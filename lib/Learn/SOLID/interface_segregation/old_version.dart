abstract class Worker {
  void work(); // Needed by everyone
  void manageTeam(); // Only needed by managers
  void processPayroll(); // Only needed by HR
  void attendMeeting(); // Needed by everyone
}

class Developer implements Worker {
  @override
  void work() => print('Developer writing code...');

  @override
  void attendMeeting() => print('Developer attending daily standup.');

  // Unused methods that had to be implemented (ISP Violation)
  @override
  void manageTeam() => throw UnimplementedError('Developers don\'t manage.');

  @override
  void processPayroll() =>
      throw UnimplementedError('Developers don\'t process payroll.');
}
