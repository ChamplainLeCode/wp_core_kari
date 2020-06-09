import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

/*
 * @Author Champlain Marius Bakop
 * @Email champlainmarius20@gmail.com
 * @Github ChamplainLeCode
 * 
 */
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Kari app set', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyKariApp());
    
  });
}
