=begin
1. code block을 {} do end로 교체 가능 해쉬나, #{} (가변인자)는 해당사항 x

2. symbol
$ global variable
@ instance variable
@@ class variable

3. 기타
1_000_000 표기 가능

4. ?로 끝나는 불리안 method들
puts [].any? 
puts ["element one", "element two", "element three"].any?
irb(main):078:0* "daadsasd".is_a?(String)
=> true
irb(main):079:0> "daadsasd".tainted?
=> false
irb(main):080:0> "daadsasd".nil?
=> false
irb(main):081:0> "daadsasd".respond_to?("downcase!")
=> true

def name?(args) -> boolean function
    codes
end
=end

### 1. capitalize ###
my_variable = "hello ruby";
my_variable.capitalize!; # 첫 번째 문자를 대문자로 만들고 나머지 소문자로 만든다. str.capitalize!() or str.capitalize!
puts my_variable;

### 2. ||= ###
a = nil;
b = 2;
a ||= b;
puts a

=begin
&& 와 || 연산자의 연장선으로
a &&= b 는 a = a && b 를 축약해서 표현한 것입니다.
따라서, a = a && b 를 수행하면 a && b 의 결과가 a 에 할당됩니다.
ex_) a = 1, b = 2 일 때, a && b 는 a 와 b 가 둘 다 참 또는 nil 이 아닌지 체크하므로 a 체크 후 b 까지 체크한 후 b 가 리턴됩니다.
이후, 리턴된 b 가 a 에 할당되도록 하는 것이 &&= 연산자의 역할입니다. 만약, a = false 또는 nil, b = true 또는 nil 이 아닌 값일 경우엔 
a 가 이미 식을 만족하지 않는 값(false 또는 nil) 이므로 b 를 체크하지 않고 a 가 리턴됩니다.

a ||= b 는 a = a || b 를 축약해서 표현한 것입니다.
따라서, a = a || b 를 수행하면 a || b 의 결과가 a 에 할당됩니다.
ex_) a = 1, b = 2 일 때, a || b 는 a 와 b 가 둘 중 하나가 참 또는 nil 이 아닌지 체크하므로 a 체크 후 a 가 참 또는 nil 이 아닌 값이라면 b 까지 체크하지 않고 a 가 리턴됩니다.
이후, 리턴된 a 가 a 에 할당되도록 하는 것이 ||= 연산자의 역할입니다. 만약, a = false 또는 nil, b = true 또는 nil 이 아닌 값일 경우엔 
a 가 식을 만족하지 않는 값(false 또는 nil) 이라도 b 의 값을 체크 후 b 를 리턴합니다.

=end

### 3. constant ###

# 대문자로 시작하는 모든 변수명은 상수로 간주된다

M = 1;
# M = 2; # 바꾸려고 하면 error

### 4. arrays ###
arr = [1,2,3];
#puts arr[1]; #2
puts arr[-1] #3
puts arr[0..-1];
puts arr[-1..0]; # 거꾸로는 안됨 3만 출력