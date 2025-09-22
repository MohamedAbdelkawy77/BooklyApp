// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  String id;
  String name;
  Person({
    required this.id,
    required this.name,
  });

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

void main() {
  Person p1 = Person(id: "13", name: "Mohamed");
  Person p2 = Person(id: "12", name: "Mohamed");
  print(p1 == p2);
}
