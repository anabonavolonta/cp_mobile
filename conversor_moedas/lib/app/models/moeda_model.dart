class MoedaModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  MoedaModel(this.name, this.real, this.dolar, this.bitcoin, this.euro);

  static List<MoedaModel> getMoedas() {
    return <MoedaModel>[
      MoedaModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
      MoedaModel(
          name: 'Dolar', real: 5.0, dolar: 1.0, euro: 0.85, bitcoin: 0.000088),
      MoedaModel(
          name: 'Euro', real: 6.0, dolar: 1.20, euro: 1.0, bitcoin: 0.000010),
      MoedaModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689,
          bitcoin: 1),
    ];
  }
}
