frequencyC(String str, String sel1, String sel2) {
  double num = double.parse(str);

  if (sel1 == "Hertz" && sel2 == "Kilohertz") {
    return (num / 1000).toString();
  } else if (sel1 == "Hertz" && sel2 == "Megahertz") {
    return (num / 1000000).toString();
  } else if (sel1 == "Hertz" && sel2 == "Gigahertz") {
    return (num / 1000000000).toString();
  } else if (sel1 == "Kilohertz" && sel2 == "Hertz") {
    return (num * 1000).toString();
  } else if (sel1 == "Kilohertz" && sel2 == "Megahertz") {
    return (num / 1000).toString();
  } else if (sel1 == "Kilohertz" && sel2 == "Gigahertz") {
    return (num / 1000000).toString();
  } else if (sel1 == "Megahertz" && sel2 == "Hertz") {
    return (num * 1000000).toString();
  } else if (sel1 == "Megahertz" && sel2 == "Kilohertz") {
    return (num * 1000).toString();
  } else if (sel1 == "Megahertz" && sel2 == "Gigahertz") {
    return (num / 1000).toString();
  } else if (sel1 == "Gigahertz" && sel2 == "Hertz") {
    return (num * 1000000000).toString();
  } else if (sel1 == "Gigahertz" && sel2 == "Kilohertz") {
    return (num * 1000000).toString();
  } else if (sel1 == "Gigahertz" && sel2 == "Megahertz") {
    return (num * 1000).toString();
  } else {
    return str;
  }
}
