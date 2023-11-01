import '../data/models/charging_point_full_model.dart';

final chargingPointFullModelMock = ChargingPointFullModel.fromJson({
  'id': '121',
  'boxId': '5403001',
  'cpNumber': '5403001',
  'locationId': '1',
  'connectorsIds': ['2', '3', '4'],
  'cpType': 'dc',
  'power': 50,
  'reservationLimit': 0,
  'statusId': 1,
  'modelId': 2,
  'model': 'Model 1',
  'ownerCompanyId': 1,
  'status': 'OPERATIVE',
  'location': {
    'id': '1',
    'title': 'Орджоникидзе 32',
    'locationId': '54030',
    'cpIds': ['121'],
    'constraintIds': [],
    'devicesIds': [],
    'optimization': 'FIFO',
    'targetPower': null,
    'latitude': 55.03205,
    'longitude': 82.93298,
    'address': '630099 Новосибирск, ул. Орджоникидзе, 32,',
    'parkingAccess': 'free',
    'workingHoursStart': '00:00',
    'workingHoursEnd': '24:00',
    'region': 'Новосибирская область',
    'regionId': '52'
  },
  'connectors': {
    'data': [
      {
        'id': '2',
        'power': 60,
        'typeId': 1,
        'statusId': 1,
        'plugTypeId': 1,
        'cpEvseId': 1,
        'cpId': 121,
        'number': '1',
        'amperage': null,
        'plugType': 'CABLE',
        'status': 'AVAILABLE',
        'type': 'CHADEMO',
        'tariffs': [
          {
            'id': '107',
            'productName': 'charging_kwh',
            'uom': 'kwh',
            'price': 15,
            'threshold': null,
            'company': null
          },
          {
            'id': '15',
            'productName': 'reservation',
            'uom': 'minutes',
            'price': 5,
            'threshold': null,
            'company': null
          }
        ]
      },
      {
        'id': '3',
        'power': 50,
        'typeId': 7,
        'statusId': 1,
        'plugTypeId': 1,
        'cpEvseId': 2,
        'cpId': 121,
        'number': '2',
        'amperage': null,
        'plugType': 'CABLE',
        'status': 'AVAILABLE',
        'type': 'IEC_62196_T2_COMBO',
        'tariffs': [
          {
            'id': '143',
            'productName': 'charging_kwh',
            'uom': 'kwh',
            'price': 15,
            'threshold': null,
            'company': null
          },
          {
            'id': '15',
            'productName': 'reservation',
            'uom': 'minutes',
            'price': 5,
            'threshold': null,
            'company': null
          }
        ]
      },
      {
        'id': '4',
        'power': 22,
        'typeId': 8,
        'statusId': 1,
        'plugTypeId': 2,
        'cpEvseId': 3,
        'cpId': 121,
        'number': '3',
        'amperage': null,
        'plugType': 'SOCKET',
        'status': 'AVAILABLE',
        'type': 'IEC_62196_T2',
        'tariffs': [
          {
            'id': '144',
            'productName': 'charging_kwh',
            'uom': 'kwh',
            'price': 8,
            'threshold': null,
            'company': null
          },
          {
            'id': '15',
            'productName': 'reservation',
            'uom': 'minutes',
            'price': 5,
            'threshold': null,
            'company': null
          }
        ]
      }
    ]
  }
});
