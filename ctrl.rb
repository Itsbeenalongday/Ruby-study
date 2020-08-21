# 조건문, 반복

## 조건문

### if elsif else

a = 2

if a==1
    puts a
elsif a==2
    puts a
else
    puts a
end

# unless 문 - if문과 반대, elsif안됨

unless a==1 # 조건이 거짓을 때 실행
    puts a
else # unless 미통과시 진입
    puts a
end


## 반복문

### while 문

num = 0;

while num <= 100
    if((num % 2)==0)
        puts num
    end
    num += 1
end

## for 문

for i in 0..10 # python의 range와 같다 0 ~ 10
    puts i
end

# 0..10 # python의 range와 같다 0 ~ 10
# 0...10은 10 미포함

for i in [1,2,3]
    puts i
end