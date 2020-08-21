=begin
    data type
    대표적으로 4가지
    1. 숫자
    2. 문자열
    3. 배열
    4. hash    
=end

# nil 아무것도 없음

a = nil;

puts a;

# 숫자

a = 2;

puts a;

# 문자열

a = 'hello world';

puts a;

# boolean

a = true;
puts a;
a = false;
puts a;

# 배열

arr = ['alice', 12345, 3.14, nil, false,[1,2,3]];
puts arr[0];
puts arr[1];
puts arr[2];
puts arr[3];
puts arr[4];
puts arr[5][0];
puts arr[5][1];
puts arr[5][2];

# 해시 - 2가지 방식의 선언, 참조 방식도 다름

## 1
hash1 = {'red'=>'ff0000', 'green'=>'00ff00'};
puts hash1['red'];
puts hash1['green'];

hash2 = {red: 'ff0000', green: '00ff00'};
puts hash2[:red];
puts hash2[:green];
puts hash2['red']; # 아무것도 안나옴 nil
puts hash2['red'].class;

# type 체크
puts hash2.instance_of? Hash;
a = nil;
puts a.kind_of?(NilClass); # 클래스 확인
puts arr.respond_to?(:length); # Array클래스에 length가 있느냐? puts arr.respond_to?('length'); 가능
puts hash2['red'].class;