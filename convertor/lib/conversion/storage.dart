storageC(String str, String sel1, String sel2) {
  double num = double.parse(str);
  //["Kilobytes", "Megabytes", "Gigabytes"],
  if (sel1 == "Kilobytes" && sel2 == "Megabytes") {
    return (num / 1000).toString();
  } else if (sel1 == "Kilobytes" && sel2 == "Gigabytes") {
    return (num / 1000000).toString();
  } else if (sel1 == "Megabytes" && sel2 == "Kilobytes") {
    return (num * 1000).toString();
  } else if (sel1 == "Megabytes" && sel2 == "Gigabytes") {
    return (num / 1000).toString();
  } else if (sel1 == "Gigabytes" && sel2 == "Kilobytes") {
    return (num * 1000000).toString();
  } else if (sel1 == "Gigabytes" && sel2 == "Megabytes") {
    return (num * 1000).toString();
  } else {
    return str;
  }
}
