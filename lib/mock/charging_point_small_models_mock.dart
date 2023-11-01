import '../data/models/charging_point_small_model.dart';

final chargingPointSmallModelsMock = [
  {
    'id': '121',
    'cpNumber': '5403001',
    'cpType': 'dc',
    'status': 'OPERATIVE',
    'location': {
      'id': '1',
      'title': 'Орджоникидзе 32',
      'address': '630099 Новосибирск, ул. Орджоникидзе, 32,',
    },
    'connectors': {
      'data': [
        {
          'id': '2',
          'tariffs': [
            {
              'id': '107',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 15,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        },
        {
          'id': '3',
          'tariffs': [
            {
              'id': '143',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 15,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        },
        {
          'id': '4',
          'tariffs': [
            {
              'id': '144',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 8,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        }
      ],
    },
  },
  {
    'id': '139',
    'cpNumber': '5401801',
    'cpType': 'dc',
    'status': 'REPAIR',
    'location': {
      'id': '6',
      'title': 'Первомайская 47',
      'address': '630046 Новосибирск, ул. Первомайская, 47,',
    },
    'connectors': {
      'data': [
        {
          'id': '42',
          'tariffs': [
            {
              'id': '93',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        },
        {
          'id': '43',
          'tariffs': [
            {
              'id': '93',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        }
      ],
    },
  },
  {
    'id': '140',
    'cpNumber': '5401601',
    'cpType': 'dc',
    'status': 'GETTING READY FOR LAUNCH',
    'location': {
      'id': '7',
      'title': 'Петухова 16',
      'address': '630088 Новосибирск, ул. Петухова, 16/5,',
    },
    'connectors': {
      'data': [
        {
          'id': '45',
          'tariffs': [
            {
              'id': '91',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        },
        {
          'id': '46',
          'tariffs': [
            {
              'id': '91',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        }
      ],
    },
  },
  {
    'id': '141',
    'cpNumber': '5402201',
    'cpType': 'dc',
    'status': 'INOPERATIVE',
    'location': {
      'id': '8',
      'title': 'Сбербанк Бердск',
      'address': '630123 Бердск, ул. Кутузова, 2,',
    },
    'connectors': {
      'data': [
        {
          'id': '48',
          'tariffs': [
            {
              'id': '97',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        },
        {
          'id': '49',
          'tariffs': [
            {
              'id': '97',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        }
      ],
    },
  },
  {
    'id': '142',
    'cpNumber': '5402001',
    'cpType': 'dc',
    'status': 'UNSUPERVISED',
    'location': {
      'id': '9',
      'title': 'Объединения 27',
      'address': '630027 Новосибирск, ул. Объединения, 27,',
    },
    'connectors': {
      'data': [
        {
          'id': '51',
          'tariffs': [
            {
              'id': '95',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        },
        {
          'id': '52',
          'tariffs': [
            {
              'id': '95',
              'productName': 'charging_kwh',
              'uom': 'kwh',
              'price': 14,
            },
            {
              'id': '15',
              'productName': 'reservation',
              'uom': 'minutes',
              'price': 5,
            }
          ],
        }
      ],
    },
  }
].map(ChargingPointSmallModel.fromJson).toList();
