// Core functionality for all employees
abstract class Workable {
  void work();
  void attendMeeting();
}

// Interface for managerial roles
abstract class Managerial {
  void manageTeam();
}

// Interface for administrative roles
abstract class Financial {
  void processPayroll();
}

// Developer only implements the interfaces relevant to their job
class Developer implements Workable {
  @override
  void work() => print('Developer writing code...');

  @override
  void attendMeeting() => print('Developer attending daily standup.');

  // No longer forced to implement manageTeam() or processPayroll()!
}

// Manager implements Workable and Managerial
class Manager implements Workable, Managerial {
  @override
  void work() => print('Manager planning sprint...');

  @override
  void attendMeeting() => print('Manager attending stakeholder meeting.');

  @override
  void manageTeam() => print('Manager assigning tasks.');
}
