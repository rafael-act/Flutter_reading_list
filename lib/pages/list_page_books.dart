import 'package:flutter/material.dart';
import 'package:reading_list/widgets/horizontal_line.dart';

class ListPageBooks extends StatefulWidget {
  const ListPageBooks({super.key});

  @override
  State<ListPageBooks> createState() => _ListPageBooksState();
}

class _ListPageBooksState extends State<ListPageBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCD3CD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 58),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reading List...',
                          style: TextStyle(
                            color: Color(0xFF498C9A),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color(0xFF498C9A),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  HorizontalLine(),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 58.0),
                        child: ListTile(
                          title: Text(
                            'Book Title $i',
                            style: TextStyle(
                              color: Color(0xFF334B4E),
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Expanded(
                            child: Text(
                              'dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                              style: TextStyle(
                                color: Color(0xFF334B4E),
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          visualDensity: VisualDensity.compact,
                          contentPadding: EdgeInsets.all(0),
                        ),
                      );
                    },
                    separatorBuilder: (context, i) => HorizontalLine(),
                    itemCount: 35,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: VerticalDivider(
                  color: Colors.red[200],
                  thickness: 3,
                  width: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
