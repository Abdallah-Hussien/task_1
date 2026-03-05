import 'package:task_1/abstraction/payment.dart';
import 'package:task_1/static/class_numbers.dart';

void main(List<String> arguments) {
  Payment payment1 =
      CreditCardPayment(amount: 150.0, cardNumber: "1234-5678-9999");
  payment1.processPayment();
  payment1.printReceipt();

  print("-----------");

  Payment payment2 = PayPalPayment(amount: 200.0, email: "user@email.com");
  payment2.processPayment();
  payment2.printReceipt();

  var dog = Dog();
}
