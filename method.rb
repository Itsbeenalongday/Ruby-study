def hello # 매개변수가 없는 경우 괄호를 안쓴다.
    puts "hello world"
end

hello;

def add(x, y) # 매개변수가 있는 경우
    return x + y # 리턴문
end

puts add(1,2)