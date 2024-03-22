// null-safety 적용 이전
/*
bool isEmpty(String string) => string.length == 0;
void main(){
    isEmpty(null);
}*/

// null safety 적용 이후
requireNonNullableVariable(int? nonNullableVar) {
  print(nonNullableVar);
}

void main() {
  int? nullableVar = null; // null을 대입해도 무방
  requireNonNullableVariable(nullableVar); // 컴파일 에러!!

  RecommendSystem a = RecommendSystem.yes();
  print(a.toString());
}

class RecommendSystem {
  final bool isRecommend;
  final String? reasonOfRecommend;

  RecommendSystem.yes()
      : isRecommend = true,
        reasonOfRecommend = "convenience";
  RecommendSystem.no()
      : isRecommend = false,
        reasonOfRecommend = null;

  @override
  String toString() {
    if (isRecommend == false) return "I don't recommend this system";
    return "I recoomend this system because of ${reasonOfRecommend!.toUpperCase()}"; // 사용 가능!
  }
}
