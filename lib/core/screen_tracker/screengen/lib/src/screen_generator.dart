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
      #className: "${sh.replaceAll(ex, '').replaceAll('-s', 'S')}()",
      #initial: annotation.getField('isInitial')?.toBoolValue()
    });
     writeMap();
    
  }
}



Map<String, Map<Symbol, dynamic>> generatedScreens = {};



writeMap()async {
  File f = File("lib/app/screens.dart");
  String content = """\n/*\n *\t\n@Author Champlain Marius Bakop\n@Email champlainmarius20@gmail.com\n@github ChamplainLeCode */\n\n\nList<Map<Symbol, dynamic>> screens = [\n""";
  generatedScreens.forEach((String annotation, Map<Symbol, dynamic> data){
    if(data[#initial])
      content = """import '${data[#uri]}';\n$content\n\t{#name: '$annotation', #screen: ${data[#className]}, #initial: ${data[#initial]}},""";
    else
      content = """import '${data[#uri]}';\n$content\n\t{#name: '$annotation', #screen: ${data[#className]}},""";
  });
  content = "$content\n\n];";
  await f.writeAsString(content, mode: FileMode.write);
}
