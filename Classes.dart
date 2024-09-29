void main() {
  Student student1 = Student('Saba', '15', '1234');
  Student student2 = Student('Saima', '13', '3421');
  student1.studentinfo();
  student2.studentinfo();
  Student spec_student = Student.special();
  //related things, assigned because special students can have diff attributes
}

class Student {
  var name = '';
  var age = '';
  var rollno = '';

//Defining default constructor
  Student(studentname, studentage, studentrollno) {
    name = studentname;
    age = studentage;
    rollno = studentrollno;
  }

  //Named constructor
  //special is just a random name
  Student.special() {}

  studentinfo() {
    print('Student Information');
    print('Student Name: $name');
    print('Student Roll. No: $rollno');
    print('Student Age: $age');
  }
}
