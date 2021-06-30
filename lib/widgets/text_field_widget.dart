import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? errorText;
  final bool? obscureText;
  final String? helperText;
  final String? hintText;
  final bool? enabled;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Function(String string)? onChanged;
  final Function(String string)? onFieldSubmitted;
  final String? initialValue;
  final Widget? suffix;
  final Widget? prefix;
  final OutlineInputBorder? border;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? errorBorder;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? disabledBorder;
  final bool? isDense;
  final EdgeInsetsGeometry? contentPadding;
  final List<TextInputFormatter>? inputFormatters;

  const TextFieldWidget({
    Key? key,
    @required this.labelText,
    this.controller,
    this.errorText,
    this.obscureText,
    this.helperText,
    this.hintText,
    this.enabled,
    this.textInputType,
    this.onChanged,
    this.onFieldSubmitted,
    this.initialValue,
    this.suffix,
    this.prefix,
    this.border,
    this.focusedBorder,
    this.errorBorder,
    this.enabledBorder,
    this.disabledBorder,
    this.isDense: false,
    this.contentPadding,
    this.inputFormatters,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      inputFormatters: this.inputFormatters,
      enabled: this.enabled != null ? this.enabled : true,
      controller: this.controller,
      initialValue: this.initialValue,
      onChanged: (String value) {
        if (this.onChanged != null) this.onChanged!(value);
      },
      onFieldSubmitted: this.onFieldSubmitted,
      keyboardType: this.textInputType,
      textInputAction: this.textInputAction,
      decoration: InputDecoration(
        border: this.border != null
            ? this.border
            : Theme.of(context).inputDecorationTheme.border,
        focusedBorder: this.focusedBorder != null
            ? this.focusedBorder
            : Theme.of(context).inputDecorationTheme.focusedBorder,
        errorBorder: this.errorBorder != null
            ? this.errorBorder
            : Theme.of(context).inputDecorationTheme.errorBorder,
        enabledBorder: this.enabledBorder != null
            ? this.enabledBorder
            : Theme.of(context).inputDecorationTheme.enabledBorder,
        disabledBorder: this.disabledBorder != null
            ? this.disabledBorder
            : Theme.of(context).inputDecorationTheme.disabledBorder,
        labelText: this.labelText.toString(),
        errorText: this.errorText,
        errorStyle: TextStyle(
          color: Colors.red,
        ),
        helperText: this.helperText,
        hintText: this.hintText,
        suffix: this.suffix,
        prefix: this.prefix,
        contentPadding: this.contentPadding,
        isDense: this.isDense,
      ),
    );
  }
}

class TextFieldMultilineWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? errorText;
  final bool obscureText;
  final bool? enabled;
  final TextInputType? textInputType;
  final int? maxLines;
  final Function? onChanged;
  final int? minLines;
  final String? initialValue;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isDense;
  final String? helperText;
  final String? hintText;

  const TextFieldMultilineWidget({
    Key? key,
    @required this.labelText,
    this.controller,
    this.errorText,
    this.obscureText: false,
    this.enabled,
    this.textInputType: TextInputType.text,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.initialValue,
    this.contentPadding,
    this.isDense,
    this.helperText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: this.initialValue,
      enabled: this.enabled != null ? this.enabled : true,
      controller: this.controller,
      obscureText: this.obscureText,
      onChanged: (String value) {
        if (this.onChanged != null) this.onChanged!(value);
      },
      keyboardType: this.textInputType,
      maxLines: this.maxLines,
      minLines: this.minLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: this.labelText.toString(),
        errorText: this.errorText,
        contentPadding: this.contentPadding,
        isDense: this.isDense,
        helperText: this.helperText,
        hintText: this.hintText,
      ),
    );
  }
}

class TextFieldPasswordWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? errorText;
  final String? helperText;
  final String? hintText;
  final bool? enabled;
  final TextInputType? textInputType;
  final Function? onChanged;
  final Function(String string)? onSubmitted;
  final TextInputAction? textInputAction;

  const TextFieldPasswordWidget({
    Key? key,
    @required this.labelText,
    this.controller,
    this.errorText,
    this.helperText,
    this.hintText,
    this.enabled,
    this.textInputType,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction: TextInputAction.newline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new TextField(
      enabled: this.enabled != null ? this.enabled : true,
      controller: this.controller,
      obscureText: true,
      onChanged: (String value) {
        if (this.onChanged != null) this.onChanged!(value);
      },
      onSubmitted: this.onSubmitted,
      keyboardType: this.textInputType,
      textInputAction: this.textInputAction,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: this.labelText.toString(),
          errorText: this.errorText,
          helperText: this.helperText,
          hintText: this.hintText),
    );
  }
}
