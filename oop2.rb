class Person
    attr_reader :name, :age # 정보를 읽을 수 있게 해줌
    attr_writer :age, :name # 정보를 쓸 수 있게 해줌
    # attr_accessor은 reader와 writer동시에
    def initialize(name, age)
        @name = name
        @age = age
    end

    public
    def run
        "#{@age}살 #{@name}이(가) 달립니다." # return을 쓰지않아도 마지막줄이 자동으로 반환됨
    end

    def check_password(password)
        if password == your_password
            puts "로그인에 성공했습니다."
        else
            puts "로그인에 실패습니다." 
        end # if문 끝나고 end적는 거 잊지 말 것
    end

    private
    def your_password
        @password = 123456
    end
end

sungmin = Person.new('sungmin',25);
puts sungmin.run;
sungmin.check_password(123456)
# puts sungmin.your_password; # error

puts sungmin.name # 변수가 아니라 메소드임
puts sungmin.age

sungmin.name= 26;
puts sungmin.name