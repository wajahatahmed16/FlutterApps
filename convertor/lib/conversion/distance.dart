distanceC(String str, String sel1, String sel2) {
  if (sel1 == "Meter" && sel2 == "Centimeter") {
    return (double.parse(str) * 100).toString();
  } else if (sel1 == "Meter" && sel2 == "Inches") {
    return (double.parse(str) * 39.37).toString();
  } else if (sel1 == "Meter" && sel2 == "Kilometer") {
    return (double.parse(str) * 1000).toString();
  } else if (sel1 == "Meter" && sel2 == "Mile") {
    return (double.parse(str) * 1609.344).toString();
  } else if (sel1 == "Centimeter" && sel2 == "Meter") {
    return (double.parse(str) / 100).toString();
  } else if (sel1 == "Centimeter" && sel2 == "Inches") {
    return (double.parse(str) / 2.54).toString();
  } else if (sel1 == "Centimeter" && sel2 == "Kilometer") {
    return (double.parse(str) / 100000).toString();
  } else if (sel1 == "Centimeter" && sel2 == "Mile") {
    return (double.parse(str) / 160934.4).toString();
  } else if (sel1 == "Inches" && sel2 == "Meter") {
    return (double.parse(str) / 39.37).toString();
  } else if (sel1 == "Inches" && sel2 == "Centimeter") {
    return (double.parse(str) * 2.54).toString();
  } else if (sel1 == "Inches" && sel2 == "Kilometer") {
    return (double.parse(str) / 39370.079).toString();
  } else if (sel1 == "Inches" && sel2 == "Mile") {
    return (double.parse(str) / 63360).toString();
  } else if (sel1 == "Kilometer" && sel2 == "Meter") {
    return (double.parse(str) * 1000).toString();
  } else if (sel1 == "Kilometer" && sel2 == "Centimeter") {
    return (double.parse(str) * 100000).toString();
  } else if (sel1 == "Kilometer" && sel2 == "Inches") {
    return (double.parse(str) * 39370.079).toString();
  } else if (sel1 == "Kilometer" && sel2 == "Mile") {
    return (double.parse(str) / 1.609).toString();
  } else if (sel1 == "Mile" && sel2 == "Meter") {
    return (double.parse(str) * 1609.344).toString();
  } else if (sel1 == "Mile" && sel2 == "Centimeter") {
    return (double.parse(str) * 160934.4).toString();
  } else if (sel1 == "Mile" && sel2 == "Inches") {
    return (double.parse(str) * 63360).toString();
  } else if (sel1 == "Mile" && sel2 == "Kilometer") {
    return (double.parse(str) * 1.609).toString();
  } else {
    return str;
  }
}
