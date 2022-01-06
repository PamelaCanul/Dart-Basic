void main(){

  final rawJson = {
    'nombre':'Tony Stark';
    'poder' : 'Dinero';
  }

  /* Puede no Existir
   * final ironman = new Heroe (nombre:rawJson['nombre']!, poder:rawJson['poder']!);  
   *  print(ironman);
   */
  //final wolverine = new Heroe(nombre:'Logan', poder: 'Regeneración');
  //print( wolverine );

  final ironman = Heroe.fromJson( rawJson);
  
}


class Heroe {
  //Nombre y poder siempre van a tener un valor
  String nombre;
  String poder;
  
  Heroe({ 
    required this.nombre, 
    required this.poder 
  });

  Heroe.fromJson(Map<String, String> json):
    this.nombre = json[nombre]!,
    this.poder = json[poder] ?? 'No tiene poder';
  
  
  
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${ this.poder }';
  }
}