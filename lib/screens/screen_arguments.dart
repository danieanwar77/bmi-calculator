class ScreenArguments {
  final String gender;
  final int age, weight, height;

  ScreenArguments(this.gender, this.age, this.weight, this.height);
}

abstract class Arguments {
  late final String gender;
  late final int age, weight, height;

  ScreenArguments(gender, age, weight, height);
}
