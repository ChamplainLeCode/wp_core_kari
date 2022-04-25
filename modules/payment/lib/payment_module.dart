import 'package:karee/annotations.dart';
import 'package:karee/core.dart';

import 'src/core/core.dart';

@Module(name: 'payment')
class PaymentModule extends KareeRoutableModule {
  @override
  Future<void> initialize() async {
    await initCore(this);
    super.initialize();
  }

  @override
  bool get startWithRoot => false;

  @override
  String get path => '/payment';

  @override
  String get name => 'payment';
}
