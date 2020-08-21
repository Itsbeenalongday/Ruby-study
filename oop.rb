class Person
    @@people_count = 0 # 클래스는 필요할 때 메모리에 올라가고 유지됨
    def initialize(name) # 인스턴스 생성시, 호출되는 생성자
        @name = name
        @@people_count += 1
    end

    def run
        puts "#{@name}이(가) 달립니다"
    end

    def self.number_of_instance # 클래스와 관련된 함수
        puts "#{@@people_count}명의 사람이 현재까지 생성되었습니다."
    end
end

p1 = Person.new("you sung min");
p1.run
Person.number_of_instance

p2 = Person.new("you sung");
p2.run
Person.number_of_instance

## 상속

### ruby는 다중 상속이 불가하다

class FootballPlayer < Person
    def run
        puts "#{@name}이(가) 축구공을 몰면서 달린다."
        super # Person의 run 메소드
    end
    def kick
        puts "#{@name}이(가) 축구공을 찼습니다."
    end
end

class BaseballPlayer < Person
    def run
        puts "#{@name}이(가) 야구공을 잡으려고 달린다."
    end
    def throwball
        puts "#{@name}이(가) 야구공을 던졌습니다."
    end
end

messi = FootballPlayer.new("messi");
messi.run;
messi.kick;

ryu = BaseballPlayer.new("ryu");
ryu.run
ryu.throwball