abstract class Payment {
  double amount;

  Payment({required this.amount});

  void processPayment();

  void printReceipt() {
    print("Receipt: Paid $amount dollars");
  }
}

mixin ValidationMixin {
  bool validateAmount(double amount) {
    if (amount <= 0) {
      print("Invalid amount!");
      return false;
    }
    return true;
  }
}

class CreditCardPayment extends Payment with ValidationMixin {
  String cardNumber;
  CreditCardPayment({
    required this.cardNumber,
    required super.amount,
  });
  @override
  void processPayment() {
    print("Starting Credit Card Payment");
    if (!validateAmount(amount)) return;
    print("Processing credit card: $cardNumber");
    print("Payment of $amount successful via Credit Card");
    print("Credit Card Payment Finished");
  }
}

class PayPalPayment extends Payment with ValidationMixin {
  String email;
  PayPalPayment({required this.email, required super.amount});
  @override
  void processPayment() {
    print("Starting PayPal Payment");
    if (!validateAmount(amount)) return;
    print("Processing PayPal account: $email");
    print("Payment of $amount successful via PayPal");
    print("PayPal Payment Finished");
  }
}
