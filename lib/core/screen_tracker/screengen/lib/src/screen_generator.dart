import 'dart:io';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:screen_tracker/screen_tracker.dart';

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */
class ScreenGenerator extends GeneratorForAnnotation<Screen> {
  
  @override
  dynamic generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep)   {
        String source = element.metadata[0].toSource();
        String sh = element.source.shortName,
               ex = buildStep.inputId.extension;
        
        var annotation = element.metadata.first.constantValue;
        
    generatedScreens.putIfAbsent(source.substring(source.indexOf("'")+1, source.lastIndexOf("'")), () => {
      #uri: element.source.uri.toString(),
      #className: "${underscoreToCambel(sh.replaceAll(ex, ''))}()",
      #initial: annotation.getField('isInitial')?.toBoolValue()
    });
     writeMap();
    
  }


  String cambelToUnderscore([String name = '']) {
    var response = '';
    for (var index = 0; index < name.length; index++) {
        var char = name[index];
        if(isUpper(char)){
            response = response+(index == 0 ? '' : '_')+char.toLowerCase();
        }else{
            response = response+char;
        }
    }
    return response;
  }

  String underscoreToCambel([String name = '']) {
      var response = '';
      for (var index = 0; index < name.length; index++) {
          var char = name[index];
          char = index == 0 && !isUpper(char) ? char.toUpperCase() : char;
          if(char == '_'){
              response = response+(index +1 < name.length ? name[index+1].toUpperCase() : '');
              index++;
          }else{
              response = response+char;
          }
      }
      return response;
  }

  bool isUpper([String char = '']) {
    if(char == null || char.isEmpty)
      return false;
    return char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90;
  }
}



Map<String, Map<Symbol, dynamic>> generatedScreens = {};



writeMap()async {
  File f = File("lib/app/screens.dart");
  String content = """\n/*\n *\t\n@Author Champlain Marius Bakop\n@Email champlainmarius20@gmail.com\n@github ChamplainLeCode */\n\n\nList<Map<Symbol, dynamic>> screens = [\n""";
  generatedScreens.forEach((String annotation, Map<Symbol, dynamic> data){
    if(data[#initial])
      content = """import '${data[#uri]}';\n$content\n\t{#name: '$annotation', #screen: () => ${data[#className]}, #initial: ${data[#initial]}},""";
    else
      content = """import '${data[#uri]}';\n$content\n\t{#name: '$annotation', #screen: () => ${data[#className]}},""";
  });
  content = "$content\n\n];";
  await f.writeAsString(content, mode: FileMode.write);
}
