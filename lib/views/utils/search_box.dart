import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
   SearchBox({
    super.key,
  });

 
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: searchController,
        textInputAction: TextInputAction.done,
        onEditingComplete: () {
          debugPrint(searchController.text.trim());
        },
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.grey,
          filled: true,
          fillColor: Colors.grey.shade300,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
