class Water{
  double temperature;
  Water(this.temperature);
  Future<Water> heat() {
    temperature=100;
    return Future<Water> (()=>this);
  }
}

main(){
    print("打开烧水开关");
    Water(0).heat().then((water){
      print('水已经烧开,现在温度:${water.temperature}');
    });
    print("扫地");
    // 打开烧水开关
    // 扫地
    // 水已经烧开,现在温度:100.0
}

void runDefaultValue() {
  int name;
  Object age; 
  assert(name == null);
  assert(age == null);
}

void runDynamic() {
  var name = 'Bob';
  name = "Tom";
  print(name);
}

void runRunes() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.runes.toList());
  
  Runes input = Runes(
    '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}'
  );
  print(String.fromCharCodes(input));
}
