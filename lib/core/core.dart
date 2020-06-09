library core;

import '../app/routes/Routes.dart';
import 'core.reflectable.dart';

import 'controller/Controller.dart';

export 'controller/Controller.dart';
export 'package:screen_tracker/screen_tracker.dart';
export 'widgets/KariMaterialApp.dart';
export 'routes/Router.dart';

/*
 * @Author Champlain Marius Bakop
 * @Email champlainmarius20@gmail.com
 * @Github ChamplainLeCode
 * 
 */


doRouting(String control, String method, dynamic params){
  try{
    if(Controllers.reflectors[control].hasReflectee){
      if(params is List){
        return Controllers.reflectors[control].invoke(method, params);
      }else{
        if(params == null){
          return Controllers.reflectors[control].invoke(method, []);
        }
        return Controllers.reflectors[control].invoke(method, [params]);  
      }  
    }
  }catch (ex, stack){
    print(ex);
    print(stack);
  }
}


initCore(){
  initializeReflectable();
  registeredRoute();
  initControllerReflectable();

  print('Initialisation ended');
}

main(){}