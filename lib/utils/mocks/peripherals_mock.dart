class PeripheralModel {
  final String name;
  final int price;

  const PeripheralModel({
    required this.name,
    required this.price,
  });
}

final peripheralsMock = <PeripheralModel>[
  const PeripheralModel(name: "Adaptor Wifi", price: 85),
  const PeripheralModel(name: "Boxe", price: 300),
  const PeripheralModel(name: "Monitor", price: 1000),
  const PeripheralModel(name: "Tastatura", price: 250),
  const PeripheralModel(name: "Mouse", price: 140),
  const PeripheralModel(name: "Adaptor HDMI", price: 55),
  const PeripheralModel(name: "Mousepad", price: 75),
  const PeripheralModel(name: "Casti", price: 500),
  const PeripheralModel(name: "Imprimanta", price: 670),
  const PeripheralModel(name: "Adaptor Bluetooth", price: 35),
];