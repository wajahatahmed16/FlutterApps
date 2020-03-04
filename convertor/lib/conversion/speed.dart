speedC(String str, String sel1, String sel2) {
  double num = double.parse(str);
  //["Kilometer/Hour", "Miles/Hour"]
  if (sel1 == "Kilometer/Hour" && sel2 == "Miles/Hour") {
    return (num/1.609).toString();
  } else if (sel2 == "Kilometer/Hour" && sel1 == "Miles/Hour") {
    return (num*1.609).toString();
  } else {
    return str;
  }
}
