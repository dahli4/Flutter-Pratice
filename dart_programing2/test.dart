void main() {
  bool isTrue = true;
  int num1 = 10;
  try {
    /// 예외가 발생할 것으로 예상되는 코드
    print(10 ~/ 0);
  } catch (error, stack) {
    /// 예외가 발생했을 때 실행 하고자 하는 코드
    print(error);
    print(stack);
  } finally {
    /// 예외가 발생 했던, 하지 않았던, try 문 / catch 문 이후에 실행하고자 하는 코드
    print('예외처리 문을 지나쳤습니다.');
  }

  int? num;

  try {
    print(num!);
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s) {
    print('Null 값이 참조 되었습니다.');
  } catch (e, s) {
    print('모르는 에러가 발생했습니다.');
  }

  try {
    throw Exception('Unknown Error');
  } on UnsupportedError catch (e, s) {
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e, s) {
    print('Null 값이 참조 되었습니다.');
  } catch (e, s) {
    rethrow;
  }

  print('위의 에러 때문에 동작을 하지 않았습니다.');
}
