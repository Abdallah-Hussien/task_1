import 'package:task_1/task_1.dart' as task_1;
import 'package:task_1/task_2';
import 'task_2' as task_2;

/*
(fun - 1)
- it takes username, password, and isAccountActive.
- Access is granted only if username equals 'student', password equals 'iti123', and account is
  active.
- Return 'Login Successful' or 'Access Denied'.
 */
String login(String username, String password, bool isAccountActive) {
  if (username == 'student' && password == 'iti123' && isAccountActive) {
    return "Login Successful";
  } else {
    return "Access Denied";
  }
}

/*
(fun - 2)
- it takes product price, isPremium, and hasCoupon.
- Customer gets 15% discount if a premium member OR has coupon. 
- Return final price.
*/
double calcDiscount(double price, bool isPremium, bool hasCoupon) {
  if (isPremium || hasCoupon) {
    return price * 0.85;
  } else {
    return price;
  }
}

/*
(fun - 3)
- it takes exam score and attendance percentage.
- Student passes only if score ≥ 50 AND attendance ≥ 75.
- Return 'Passed' or 'Failed'.
*/
String checkResult(int score, int attendance) {
  if (score >= 50 && attendance >= 75) {
    return "Passed";
  } else {
    return "Failed";
  }
}

/*
(fun - 4)
- it takes salary, age, and hasExistingLoan.
- Loan approved if salary ≥ 5000, age between 21 and 60, and no existing loan.
- Return 'Loan Approved'
*/
String loanApproval(double salary, int age, bool hasExistingLoan) {
  if (salary >= 5000 && age >= 21 && age <= 60 && !hasExistingLoan) {
    return "Loan Approved";
  } else {
    return "Loan Rejected";
  }
}

/*
(fun - 5)
- it takes order amount and distance in kilometers.
- Free delivery if order ≥ 300, otherwise delivery fee = distance × 5.
- Return total amount including delivery.
*/
double deliveryCost(double orderAmount, double distance) {
  if (orderAmount >= 300) {
    return orderAmount;
  } else {
    double fee = distance * 5;
    return orderAmount + fee;
  }
}

/*
(fun - 6)
- it takes years of experience and performance rating (1–5).
- Employee receives bonus if experience ≥ 3 AND rating ≥ 4.
- Return 'Bonus Granted' or 'No Bonus'.
*/
String checkBonus(int experience, int rating) {
  if (experience >= 3 && rating >= 4) {
    return "Bonus Granted";
  } else {
    return "No Bonus";
  }
}

/*
(fun - 7)
- it takes hasAccessCard and knowsPassword.
- Door opens only if both are true.
- Return 'Door Opened' or 'Access Restricted'.
*/
String doorAccess(bool hasAccessCard, bool knowsPassword) {
  if (hasAccessCard && knowsPassword) {
    return "Door Opened";
  } else {
    return "Access Restricted";
  }
}

/*
(fun - 8)
- it takes electricity usage (kWh).
- usage < 200 → 'Low Consumption', 200–500 → 'Medium Consumption', above 500 → 'High Consumption'.
- Return the category.
*/
String electricityUsage(double usage) {
  if (usage < 200) {
    return "Low Consumption";
  } else if (usage <= 500) {
    return "Medium Consumption";
  } else {
    return "High Consumption";
  }
}

/*
(fun - 9)
- it takes completedLessons and quizScore.
- Next level unlocks if completed lessons ≥ 10 AND quiz score ≥ 70.
- Return 'Level Unlocked' or 'Complete Requirements'.
*/
String nextLevel(int completedLessons, int quizScore) {
  if (completedLessons >= 10 && quizScore >= 70) {
    return "Level Unlocked";
  } else {
    return "Complete Requirements";
  }
}

/*
(fun - 10)
- it takes driver availability, user balance, and trip cost.
- Ride starts if driver available AND balance ≥ trip cost.
- Return 'Ride Confirmed' or 'Insufficient Conditions'.?
*/
String rideRequest(bool driverAvailable, double userBalance, double tripCost) {
  if (driverAvailable && userBalance >= tripCost) {
    return "Ride Confirmed";
  } else {
    return "Insufficient Conditions";
  }
}

void main(List<String> arguments) {
  /// Task (1)
  // print(login('student', 'iti123', true));
  // print(calcDiscount(100.0, true, false));
  // print(checkResult(50, 80));
  // print(loanApproval(10000, 30, false));
  // print(deliveryCost(300.0, 10.0));
  // print(checkBonus(4, 5));
  // print(doorAccess(true, true));
  // print(electricityUsage(380.0));
  // print(nextLevel(13, 75));
  // print(rideRequest(true, 50.0, 30.0));

  /// Task 2
  var task2 = TaskTwo();
  task2.printNumbers(5);
  print("Sum: ${task2.sumList([1, 2, 3, 4])}");
  print("Max: ${task2.findMax([3, 9, 2, 7])}");
  print("Reversed: ${task2.reverseString("dart")}");
  task2.printNames(["Ali", "Sara", "Omar"]);
  print("Even Count: ${task2.countEven([1, 2, 4, 7, 8])}");
  print("Uppercase: ${task2.toUpperCase(["hello", "world"])}");
  task2.printItems([10, 20, 30]);
  print("Doubled: ${task2.doubleNumbers([1, 2, 3])}");
  print("Total Price: ${task2.calculateTotal([10.5, 20.0, 5.5])}");
}
