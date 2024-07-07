import 'package:flutter/material.dart';

class FastFood extends StatelessWidget {
  const FastFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // first child
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: const DecorationImage(
                      image: AssetImage("images/hamburger.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // second child
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.pin_drop_outlined),
                          Text('Lorem Ipsum'),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.timer_outlined),
                          Text('Lorem Ipsum'),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: List.generate(
                              5,
                              (index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          const Text("(4.9)"),
                        ],
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        );
      },
    );
  }
}
