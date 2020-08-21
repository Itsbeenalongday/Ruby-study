#!/usr/bin/env ruby
# 윗줄은 주석이 아니고, 파일 실행시, 알려주는 역할, 즉 의미가 있다

# 문자열 중간에 변수 끼워넣기
# ...문자...#{변수}...문자...
def greet(name = "World") # keyword 매개변수
    puts "Hello #{name}!"
end

greet('sung min');
greet;

# class
# 멤버에 접근하여 수정하기
=begin
attr_accessor은 두 개의 메서드를 새로 정의해줍니다. name은 인스턴스 변수의 값에 접근하기 위한 것이고 name=은 객체변수의 값을 변경하기 위한 것입니다.
=end
class Greeter
    attr_accessor :name # 속성접근자를 지정

    def initialize(name = "World")
        @name = name
    end
    def say_hi
        puts "Hi #{@name}!"
    end
    def say_bye
        puts "Bye #{name}, come back soon."
    end
end

g = Greeter.new("Sung min") # 객체 생성
g.say_hi
g.say_bye

# 숨겨진 메소드 보기
Greeter.instance_methods

# 상속제외 메소드 보기
Greeter.instance_methods(false)

# to_s(to_string)메소드를 가지고 있는지 확인
g.respond_to?("to_s") 

g = Greeter.new("You");
g.respond_to?('name'); # 조회의 기능
g.respond_to?('name='); # 수정의 기능

g.name="sung min";
puts g.name

class MegaGreeter
    attr_accessor :names
  
    # Create the object
    def initialize(names = "World")
      @names = names
    end
  
    # Say hi to everybody
    def say_hi
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("each")
        # @names is a list of some kind, iterate!
        @names.each do |name|
          puts "Hello #{name}!"
        end
      else
        puts "Hello #{@names}!"
      end
    end
  
    # Say bye to everybody
    def say_bye
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("join")
        # Join the list elements with commas
        puts "Goodbye #{@names.join(", ")}.  Come back soon!"
      else
        puts "Goodbye #{@names}.  Come back soon!"
      end
    end
  
  end
  

mg = MegaGreeter.new
mg.say_hi
mg.say_bye

# Change name to be "Zeke"
mg.names = "Zeke"
mg.say_hi
mg.say_bye

# Change the name to an array of names
mg.names = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
mg.say_hi
mg.say_bye

# Change to nil
mg.names = nil
mg.say_hi
mg.say_bye


# 순환과 반복 - iterator
=begin

each는 코드 블록을 넘겨 받아서 리스트의 각 원소에 순차적으로 이를 적용시키는 메서드입니다. do와 end 사이의 코드가 바로 블록이지요.(c++ for_each, python map과 같은 역할)
블록은 익명 함수 또는 lambda와 유사하다고 볼 수 있습니다. 두개의 | 사이의 변수는 이 블록에 넘겨지는 매개 변수입니다.
c++ 람다에서 [&variable](){ } 이렇게 하듯이 루비에서는 |variable|로 변수를 넘긴다

여기서 일어나고 있는 것은 리스트의 각 원소가 name 변수에 넘겨져서, 그 name을 가지고 puts “Hello#\{name}!” 코드가 실행되고 있는 거랍니다.
대부분의 다른 프로그래밍 언어에서는 보통 for 반복문을 사용해서 리스트의 내용물을 처리하게 되지요. C 코드로는 다음과 같겠죠.
for (i=0; i<number_of_elements; i++)
{
  do_something_with(element[i]);
}

=end
names = ['you', 'kim', 'choi', 'lee', 'koo']
names.each do |name|
    puts "Hello #{name}!"
end

# 블록
# Say bye to everybody
def say_bye(names)
    if names.nil?
      puts "..."
    elsif names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{names}.  Come back soon!"
    end
end

=begin
say_bye 메서드는 each 메서드를 사용하지 않는군요. say_bye 메서드는 단지 @names가 join 메서드를 가졌는지 확인하고, 가지고 있다면 join 하고 있습니다. 
그렇지 않다면, 변수를 문자열로 출력만 합니다. 이 메서드는 변수의 실제 타입은 신경을 쓰지 않는군요. 
이처럼 단지 어떤 메서드만을 가지고 있는지에 의존하는 것을 덕 타이핑(Duck Typing)이라고 부릅니다. “만약 오리처럼 걷고 오리처럼 꽥꽥거리면…”에서처럼 말입니다. 
이런 방식의 장점은 어떤 타입의 변수를 지원할 것인지를 제한할 필요가 없다는 것입니다. 
만약 누군가가 새로운 종류의 list 클래스를 정의했다고 해도, 거기에 join 메서드만 정의되어 있으면 잘 동작 할 것입니다.
=end

# if __FILE__ == $0, python에서 if __name__ == __main__과 같은 역할