
 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomSearch extends StatelessWidget {
  const CustomSearch(
      {super.key,
      required this.name,
      required this.onchanged,
      this.obscuretext = false});
  final String? name;
  final Function(String)? onchanged;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 280,
          height: 50,
          child: TextFormField(
            obscureText: obscuretext,
            validator: (data) {
              if (data!.isEmpty) {
                return "Please enter correct data";
              }
              return null;
            },
            onChanged: onchanged,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              fillColor: const Color(0xffC2C2C2).withOpacity(0.5),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
              ),
              hintText: name,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.barsStaggered),
        ),
      ],
    );
  }
}
