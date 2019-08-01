import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'translation_generator.dart';

Builder mainGenerator(BuilderOptions options) =>
    SharedPartBuilder([TranslationGenerator()], 'translation');
