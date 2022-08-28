
import 'dart:math';

class MathUtil {
  static  getRandomNumber() {
    Random rnd;
    int min = 1;
    int max = 75;
    rnd = Random();
    int randToReturn = rnd.nextInt(max) + 1;
    return randToReturn;
  }
}