Future<String> firstName() async{
  return "Dedy";
}

Future<String> lastName() async{
  return "Mtv";
}

Future<String> sayHello(String name) async{
  return "Hello $name";
}

Future<void> say() async{
  String first = await firstName();
  String last = await lastName();
  String hello = await sayHello("$first $last");
  print(hello);
}

void main(){
  say();

  print("Done");
}