void main() {
  Map stuRecords = {
    "secA": {"students": 60, "timing": "7 to 9"},
    "secB": {"students": 60, "timing": "7 to 9"},
  };

  stuRecords.putIfAbsent("students", () => 'hanzala');
 

  stuRecords['secA'].remove('students');
  
  print(stuRecords);

}
