import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:translation_generator/message.dart';

class TranslationGenerator extends GeneratorForAnnotation<Message> {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) async {
    String values = await super.generate(library, buildStep);

    return values.length > 0
        ? "class _AppLocalizations { \n $values \n } \n\n"
        : "";
  }

  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final name = annotation.read('name').literalValue;
    final defaultMessage = annotation.read('defaultMessage').literalValue;
    return "String get $name => Intl.message('$defaultMessage',name: '$name');";
  }
}
