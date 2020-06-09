library core.controller;

import 'package:reflectable/reflectable.dart';
import '../../app/app.module.dart';

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */

class Controllers extends Reflectable{
  static Map<String, InstanceMirror> reflectors = {};
  const Controllers() : super(invokingCapability);
}

const Controllers Controller = Controllers();


void initControllerReflectable(){
  /**
   * Here we subscribe controllers
   */
  for(dynamic control in controllers){
    Controllers.reflectors[control.runtimeType.toString()] = Controller.reflect(control);
  }
}


