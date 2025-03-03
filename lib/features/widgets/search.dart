import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  final ValueChanged<String>? onTextChanged;
  final VoidCallback? onSearchClosed;
  final String hintText;
  final Widget suffixIcon;

  const SearchInput({
    super.key,
    this.onTextChanged,
    this.onSearchClosed,
    this.hintText = 'Search...',
    required this.suffixIcon,
  });

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    if (widget.onTextChanged != null) {
      widget.onTextChanged!(_textController.text);
    }
  }

  @override
  void dispose() {
    _textController.removeListener(_onTextChanged);
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        floatingLabelBehavior: FloatingLabelBehavior.never,
    
        isDense: true,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromRGBO(42, 42, 42, 1),
        hintText: widget.hintText,
        prefixIcon: widget.suffixIcon,
        hintStyle: const TextStyle(
          color: Colors.white54,
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ),
      onChanged:
          (text) => widget.onTextChanged?.call(text), // Update callback
    );
  }
}
