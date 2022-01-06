void main(){

  print ('Antes de la petición'); 

  httpGet('https://api.nasa.com/aliens').then((data) {
    print (data);
  });

  print ('Fin del programa');


}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 3),(){
    return 'Hola Mundo - 3 segundos';
  }); 
}