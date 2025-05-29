import 'package:counterapptest/counter.dart';
import 'package:flutter_test/flutter_test.dart';

/*void main(){

  // unit testing
  //first you give the description and then
  test('Initial value should be zero.', (){ //inside body we write the function
    final counter = Counter();
    expect(counter.count,0);//checks whether the value is crt or not after the test
      },);
}*/
void main() {
  group('Test start, increment, decrement', () {
    final counter = Counter();
    test('value should start at 0', () {
      expect(counter.count, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();
      counter.increment();
      expect(counter.count, 2);
    });

    test('value should be decremented', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.count, -1);
    });
  });
}