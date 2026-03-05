class ClassNumbers {
  static int classCounter = 0;

  ClassNumbers() {
    classCounter++;
  }
}

class Animal {
  eat() {
    print("Eating.....");
  }
  sleep() {
    print("Sleeping.....");
  }
}

mixin WalkInTwo{
  walkInTwo() {
    print("walking In Two foot.....");
  }
}

mixin WalkInFour{
  walkInFour() {
    print("walking In Four foot.....");
  }
}


class Dog extends Animal with WalkInFour {
  spark() {
    print("Sparking.....");
  }
}

class Monkey extends Animal with WalkInTwo {
  eatingBanana() {
    print("Eating Banana.....");
  }
}


