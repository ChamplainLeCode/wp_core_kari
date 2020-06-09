import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/screen_generator.dart';


/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */


Builder screenTracker(BuilderOptions options) {
    var builder =  SharedPartBuilder([ScreenGenerator()], 'screen_tracker');
  return builder;
} 