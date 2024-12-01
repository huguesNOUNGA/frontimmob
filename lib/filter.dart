import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Filter extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  var selectedRange = const RangeValues(400, 1000);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 32, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Row(
            children: [

              Text(
                "filtre",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                width: 8,
              ),

              Text(
                "recherchez ici",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),

            ],
          ),

          const SizedBox(
            height: 32,
          ),

          const Row(
            children: [

              Text(
                "Prix",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                width: 8,
              ),

              Text(
                "range",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),

            ],
          ),

          RangeSlider(
            values: selectedRange,
            onChanged: (RangeValues newRange) {
              setState(() {
                selectedRange = newRange;
              });
            },
            min: 70,
            max: 3000,
            activeColor: Colors.blue[900],
            inactiveColor: Colors.grey[300],
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                r"70k",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

               Text(
                r"2M",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

            ],
          ),

          const SizedBox(
            height: 16,
          ),

          const Text(
            "Chambres",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 16,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              buildOption("Any", false),
              buildOption("1", false),
              buildOption("2", true),
              buildOption("3+", false),

            ],
          ),

          const SizedBox(
            height: 16,
          ),

          const Text(
            "Toilettes",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 16,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              buildOption("Any", true),
              buildOption("1", false),
              buildOption("2", false),
              buildOption("3+", false),

            ],
          ),

        ],
      ),
    );
  }

  Widget buildOption(String text, bool selected){
    return Container(
      height: 45,
      width: 65,
      decoration: BoxDecoration(
        color: selected ? Colors.blue[900] : Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: selected ? 0 : 1,
          color: Colors.grey,
        )
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}