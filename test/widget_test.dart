
import 'package:counterapptest/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
void main() {
  //you find the value here
  testWidgets('initial counter is 0',(WidgetTester tester) async{
    await tester.pumpWidget(MyApp());//calls the main root
    expect(find.text('Count : 0'), findsOneWidget);
  },);

  testWidgets('Tap on increment button increases counter',
      (tester) async{
        await tester.pumpWidget(const MyApp());
        await tester.tap(find.byKey(const Key('incrementButton')));
        await tester.pump();
        expect(find.text('Count : 1'), findsOneWidget);
  },);
  
  testWidgets('Custom value sets counter',
      (tester) async{
        await tester.pumpWidget(const MyApp());
        await tester.enterText(find.byKey(const Key('inputField')),'42');
        await tester.tap(find.byKey(const Key('setCustomButton')));
        await tester.pump();
        expect(find.text('Count : 42'), findsOneWidget);

      },
  );
}
