temperatureC(String str, String sel1, String sel2) {
  double num = double.parse(str);
  if (sel1 == "Celcius" && sel2 == "Farenheight") {
    return ((num * 9 / 5) + 32).toString();
  } else if (sel2 == "Celcius" && sel1 == "Farenheight") {
    return ((num - 32) * 5 / 9).toString();
  } else {
    return str;
  }
}
