import 'package:flutter/material.dart';

class AddMedicineScreen extends StatefulWidget {
  @override
  _AddMedicineScreenState createState() => _AddMedicineScreenState();
}

class _AddMedicineScreenState extends State<AddMedicineScreen> {
  int _selectedCompartment = 1;
  Color _selectedColor = Colors.pink.shade100;
  String _selectedType = 'Tablet';
  String _quantity = 'Take 1/2 Pill';
  int _totalCount = 1;
  double _sliderValue = 1;
  DateTime _startDate = DateTime.now();
  DateTime? _endDate;
  String _frequency = 'Everyday';
  String _timesADay = 'Three Time';
  List<TimeOfDay?> _doseTimes = [
    TimeOfDay(hour: 8, minute: 0),
    TimeOfDay(hour: 14, minute: 0),
    TimeOfDay(hour: 20, minute: 0),
  ];
  String _doseContext = 'Before Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigate back
          },
        ),
        title: Text('Add Medicines'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Medicine Name',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                ),
              ),
              SizedBox(height: 20),
              Text('Compartment', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) => _buildCompartmentButton(index + 1)),
              ),
              SizedBox(height: 20),
              Text('Colour', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildColorButtons(),
              ),
              SizedBox(height: 20),
              Text('Type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildTypeButtons(),
              ),
              SizedBox(height: 20),
              Text('Quantity', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(_quantity),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      // Decrease quantity
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Increase quantity
                    },
                  ),
        
                ],
              ),
              Row(
                children: [
                  Text('Total Count:', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _totalCount = int.tryParse(value) ?? 1;
                        });
                      },
                      controller: TextEditingController(text: _totalCount.toString()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Quantity/Dosage: $_sliderValue'),
              Slider(
                value: _sliderValue,
                min: 1,
                max: 100,
                divisions: 99,
                label: _sliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Set Date', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Start Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Start Date'),
                      TextButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: _startDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (picked != null && picked != _startDate)
                            setState(() {
                              _startDate = picked;
                            });
                        },
                        child: Text('${_startDate.toString().split(' ')[0]}'),
                      ),
                    ],
                  ),
                  // End Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('End Date'),
                      TextButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: _endDate ?? DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (picked != null && picked != _endDate)
                            setState(() {
                              _endDate = picked;
                            });
                        },
                        child: Text(_endDate != null ? '${_endDate!.toString().split(' ')[0]}' : 'Select Date'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Frequency of Days', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: _frequency,
                onChanged: (String? newValue) {
                  setState(() {
                    _frequency = newValue!;
                  });
                },
                items: <String>['Everyday', 'Every Other Day', 'Select Days']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Text('How Many Times a Day', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: _timesADay,
                onChanged: (String? newValue) {
                  setState(() {
                    _timesADay = newValue!;
                    // Adjust the number of dose time pickers based on the selection
                    if (newValue == 'One Time') {
                      _doseTimes = [_doseTimes[0]];
                    } else if (newValue == 'Two Time') {
                      _doseTimes = _doseTimes.sublist(0, 2);
                    } else if (newValue == 'Three Time') {
                      _doseTimes = _doseTimes.sublist(0, 3);
                    }
                  });
                },
                items: <String>['One Time', 'Two Time', 'Three Time']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _doseTimes.length,
                itemBuilder: (context, index) {
                  return _buildDoseTimeWidget(index);
                },
              ),
              SizedBox(height: 20),
              Text('Timing Context', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildContextButton('Before Food'),
                  _buildContextButton('After Food'),
                  _buildContextButton('Before Sleep'),
                ],
              ),
              SizedBox(height: 30),
        
              // Add Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle adding the medication reminder
                    // You can access the selected values here
                    print('Total Count: $_totalCount');
                    print('Quantity/Dosage: $_sliderValue');
                    print('Start Date: $_startDate');
                    print('End Date: $_endDate');
                    print('Frequency: $_frequency');
                    print('Times a Day: $_timesADay');
                    print('Dose Times: $_doseTimes');
                    print('Dose Context: $_doseContext');
                  },
                  child: Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCompartmentButton(int compartmentNumber) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCompartment = compartmentNumber;
        });
      },
      child: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
          color: _selectedCompartment == compartmentNumber
              ? Colors.blue.shade100
              : Colors.white ?? Colors.grey,
          border: Border.all(
            color: _selectedCompartment == compartmentNumber
                ? Colors.blue.shade700
                : Colors.grey[300] ?? Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            '$compartmentNumber',
            style: TextStyle(
              color: _selectedCompartment == compartmentNumber ? Colors.black : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildColorButtons() {
    List<Color> colors = [
      Colors.pink.shade100,
      Colors.purple.shade100,
      Colors.red.shade200,
      Colors.lightGreen.shade200,
      Colors.orange.shade200,
      Colors.lightBlue.shade200,
      Colors.yellow.shade200,
    ];
    return colors.map((color) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedColor = color;
          });
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
              color: _selectedColor == color ? Colors.blue : Colors.transparent,
              width: 2,
            ),
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _buildTypeButtons() {
    List<String> types = ['Tablet', 'Capsule', 'Cream', 'Liquid'];
    return types.map((type) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedType = type;
          });
        },
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _selectedType == type ? Colors.blue.shade100 : Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  _getTypeIcon(type),
                  color: _selectedType == type ? Colors.blue : Colors.grey.shade600,
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(type, style: TextStyle(fontSize: 12)),
          ],
        ),
      );
    }).toList();
  }

  IconData _getTypeIcon(String type) {
    switch (type) {
      case 'Tablet':
        return Icons.crop_square;
      case 'Capsule':
        return Icons.rounded_corner;
      case 'Cream':
        return Icons.opacity;
      case 'Liquid':
        return Icons.water_drop;
      default:
        return Icons.help;
    }
  }

  Widget _buildDoseTimeWidget(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Text('Dose ${index + 1}:'),
          SizedBox(width: 10),
          TextButton(
            onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: _doseTimes[index] ?? TimeOfDay.now(),
              );
              if (picked != null && picked != _doseTimes[index]) {
                setState(() {
                  _doseTimes[index] = picked;
                });
              }
            },
            child: Text(_doseTimes[index] != null
                ? _doseTimes[index]!.format(context)
                : 'Select Time'),
          ),
        ],
      ),
    );
  }

  Widget _buildContextButton(String context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _doseContext = context;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _doseContext == context ? Colors.blue : Colors.grey[300],
      ),
      child: Text(context),
    );
  }
}