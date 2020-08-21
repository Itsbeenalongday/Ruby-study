# 타입이 따로 필요없다.
x = 2;
x = 'string';
x = [1,2,3];
x = {first_name: 'you', last_name: 'sungmin'};

# 지역변수, 전역변수, 인스턴스변수, 클래스변수

## 지역
x = 2;

## 전역
$g = 1;

## 인스턴스변수: 
### 클래스내에 있는 인스턴스에서 불러 올수 있다.
### 클래스내의 메소드끼리 공유가능한 변수
### 메소드 외부에서는 참조가 불가능하다.

## 클래스변수:
### 클래스 내부 전체에서 참조가능
### 물론 메소드에서도 사용가능

## 인스턴스는 메소드끼리만 공유가능하고, 클래스가 가지고 있을 필요가 없음 - 공통적인 것이 아님
## 클래스는 해당 클래스를 사용하면 공통적으로 가지고 있어야함을 의미 - 공통적인 것

class Ruler
    @@size1 = 30;
    # @@temp = @len + @size;  error len을 참조 못하기 때문
    def get_len # 매개변수 없을 때 괄호 생략 가능
        return @len + @@size1;
    end
    
    def set_len(params)
        @len = params;
    end
end

r1 = Ruler.new();

r1.set_len(120);
puts r1.get_len;
# puts r1.@@size # 참조 불능