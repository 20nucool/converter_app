Map<String, dynamic> map1 = {
  'Length': [
    'Meter',
    'Kilometer',
    'Centimeter',
    'Millimeter',
    'Mile',
    'Yard',
    'Foot',
    'Inch',
  ],
  'Area': [
    'Square Meter',
    'Square Foot',
    'Square Kilometer',
    'Hectare',
    'Acre',
    'Ropani',
    'Anna',
    'Paisa',
    'Bigha',
    'Kattha',
    'Dhur',
  ],
  'Volume': [
    'Cubic Meter',
    'Cubic Kilometer',
    'Cubic Centimeter',
    'Cubic Foot',
    'Liter',
    'Gallon',
  ],
  'Temperature': ['Kelvin', 'Celsius', 'Fahrenheit'],
  'Weight': [
    'Kilogram',
    'Gram',
    'Pound',
    'Metric Ton',
    'Ounce',
    'Quintal',
  ],
  'Time': [
    'Second',
    'Millisecond',
    'Minute',
    'Hour',
    'Day',
    'Week',
    'Month',
    'Year',
  ],
  'Speed': [
    'meter/second',
    'Kilometer/hour',
    'Mile/hour',
    'Kilometer/second',
  ]
};

//conversion

Map<String, dynamic> conversion = {
  //length
  'Meter_to_Meter': 1,
  'Meter_to_Centimeter': 100,
  'Centimeter_to_Meter': 0.01,
  'Kilometer_to_Meter': 1000,
  'Meter_to_Kilometer': 0.001,
  'Meter_to_Foot': 3.28,
  'Foot_to_Meter': 0.3048,
  'Meter_to_Inch': 39.37,
  'Inch_to_Meter': 0.0254,
  'Meter_to_Mile': 0.000621,
  'Mile_to_Meter': 1609.35,
  'Meter_to_Yard': 1.0936,
  'Yard_to_Meter': 0.9144,
  'Meter_to_Millimeter': 1000,
  'Millimeter_to_Meter': 0.001,

  //Area
  'Square Meter_to_Square Meter': 1,
  'Square Meter_to_Square Foot': 10.764,
  'Square Foot_to_Square Meter': 0.0929,
  'Square Meter_to_Square Kilometer': 0.000001,
  'Square Kilometer_to_Square Meter': 1000000,
  'Square Meter_to_Hectare': 0.0001,
  'Hectare_to_Square Meter': 10000,
  'Square Meter_to_Acre': 0.000247,
  'Acre_to_Square Meter': 4046.856,
  'Square Meter_to_Ropani': 0.001965,
  'Ropani_to_Square Meter': 508.7328,
  'Square Meter_to_Anna': 0.03145,
  'Anna_to_Square Meter': 31.795,
  'Square Meter_to_Paisa': 0.1258,
  'Paisa_to_Square Meter': 7.9487,
  'Square Meter_to_Bigha': 0.0001476,
  'Bigha_to_Square Meter': 6772.575,
  'Square Meter_to_Kattha': 0.00295,
  'Kattha_to_Square Meter': 338.628,
  'Square Meter_to_Dhur': 0.059,
  'Dhur_to_Square Meter': 16.931,

  //Volume
  'Cubic Meter_to_Cubic Meter': 1,
  'Cubic Meter_to_Cubic Kilometer': 0.000000001,
  'Cubic Kilometer_to_Cubic Meter': 1000000000,
  'Cubic Meter_to_Cubic Centimeter': 0.000001,
  'Cubic Centimeter_to_Cubic Meter': 1000000,
  'Cubic Meter_to_Liter': 1000,
  'Liter_to_Cubic Meter': 0.001,
  'Cubic Meter_to_Gallon': 264.172,
  'Gallon_to_Cubic Meter': 0.003785,
  'Cubic Meter_to_Cubic Foot': 35.315,
  'Cubic Foot_to_Cubic Meter': 0.0283,

  //Temperature
  'Kelvin_to_Kelvin': 1,

  //Weight
  'Kilogram_to_Kilogram': 1,
  'Kilogram_to_Gram': 1000,
  'Gram_to_Kilogram': 0.001,
  'Kilogram_to_Metric Ton': 0.001,
  'Metric Ton_to_Kilogram': 1000,
  'Kilogram_to_Pound': 2.2,
  'Pound_to_Kilogram': 0.4535,
  'Kilogram_to_Ounce': 35.273,
  'Ounce_to_Kilogram': 0.0283,
  'Kilogram_to_Quintal': 0.01,
  'Quintal_to_Kilogram': 100,

  //Time
  'Second_to_Second': 1,
  'Second_to_Millisecond': 1000,
  'Millisecond_to_Second': 0.001,
  'Second_to_Minute': 0.0167,
  'Minute_to_Second': 60,
  'Second_to_Hour': 0.000277,
  'Hour_to_Second': 3600,
  'Second_to_Day': 0.00001157,
  'Day_to_Second': 86400,
  'Second_to_Week': 0.00000165,
  'Week_to_Second': 604800,

  //Speed
  'Meter/second_to_Meter/second': 1,
  'Meter/second_to_Kilometer/second': 0.001,
  'Kilometer/second_to_Meter/second': 1000,
  'Meter/second_to_Kilomete/hour': 3.6,
  'Kilometer/hour_to_Meter/second': 0.2777,
  'Meter/second_to_Mile/hour': 2.2369,
  'Mile/hour_to_Meter/second': 0.44704,
};
