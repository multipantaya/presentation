import 'package:presentation/constants/decoration.dart';
import 'package:presentation/theme/color/theme_colors.dart';
import 'package:presentation/theme/decoration/decoration.dart';
import 'package:presentation/theme/decoration/input/input_decoration.dart';
import 'package:presentation/theme/decoration/shadows.dart';
import 'package:presentation/theme/decoration/visual_density.dart';
import 'package:presentation/theme/font_weight/font_weight.dart';
import 'package:presentation/theme/gradients/gradient.dart';
import 'package:presentation/theme/styles/text_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeColors colors = ThemeColors();
  static FWeight fontWeight = FWeight();
  static TStyles textStyles = TStyles();
  static Gradients gradients = Gradients();
  static IDecoration inputDecoration = IDecoration();
  static VisualDensitys visualDensitys = VisualDensitys();
  static ConstantsDecoration constantsDecoration = ConstantsDecoration();
  static AppDecorations decorations = AppDecorations();
  static MPYShadows shadows = MPYShadows();
}
