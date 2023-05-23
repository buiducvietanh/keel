import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _priceEditingController = TextEditingController();
//   final _userEditingController = TextEditingController();
//   final _rgphoneEditingController = TextEditingController();
//   final _phoneEditingController = TextEditingController();
//   final _addressEditingController = TextEditingController();
  String dropdownbt = '+94';
  List<String> items = [
    '+00',
    '+82',
    '+94',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 76, 175, 92),
          leading: const Icon(Icons.keyboard_backspace, size: 25),
          title: const Text('Checkout'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Title(
                        color: const Color.fromARGB(255, 24, 24, 24),
                        child: const Text(
                          'Cart summary',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Subtotal (4 items)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.attach_money),
                            Text(
                              '7.090.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Promotion Discounts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.attach_money),
                            Text(
                              '300.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add Coupon',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextField(
                            controller: _priceEditingController,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              constraints: const BoxConstraints(
                                maxWidth: 120,
                                maxHeight: 35,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Delivery charges',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.attach_money),
                            Text(
                              '0.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Est. Total',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.attach_money),
                            Text(
                              '6,790.00',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Title(
                        color: const Color.fromARGB(255, 24, 24, 24),
                        child: const Text(
                          'Recipient Details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        initialValue: 'Ishan Madushka',
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          constraints: const BoxConstraints(
                            maxHeight: 35,
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                                constraints: const BoxConstraints(
                                  maxHeight: 36,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              alignment: Alignment.center,
                              value: '+94',
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  dropdownbt = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: TextFormField(
                                initialValue: '71 87 86 729',
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  constraints: const BoxConstraints(
                                    maxHeight: 35,
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Title(
                        color: const Color.fromARGB(255, 24, 24, 24),
                        child: const Text(
                          'Deliver Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.green, width: 1.2),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  backgroundColor: Colors.green[100]),
                              child: const Text(
                                'Home Delevery',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 175, 175, 175),
                                    width: 1.2),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: const Text(
                                'Pick Up',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        initialValue: '424/1D Palanwatta, Pannipitiya',
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.location_on_outlined),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          constraints: const BoxConstraints(
                            maxHeight: 41,
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
