function func(x: real): real;
begin
  Func:= 2*power(x,3)+2*sqr(x)+(-5*x)+15;
end;
function left(a, b:real; n:integer):real;
var
  h, x, sum:real;
begin
  h:=(b-a)/n;
  sum:=0;
  x:=a;
  while x<b do
  begin
    sum:=sum+(h*func(x));
    x:=x+h;
  end;
  left:=sum;
end;
procedure calculate;
var
  a, b:real;
  n:integer;
  integral, e:real;
begin
  writeln('введите границы интергала:');
  write('a = ');
  readln(a);
  write('b = ');
  readln(b);
  write('введите количество прямоугольников (n): ');
  readln(n);
  integral :=left(a, b, n);
  e:= abs(integral-left(a, b, 2*n)); 
  writeln('площадь: ', integral);
  writeln('погрешность: ', e);
end;
procedure Main;
var
  c:integer;
begin
  writeln('1. вычисление площади фигуры');
  writeln('2. выход');
  repeat
    write('ваш выбор: ');
    readln(c);
    case c of
     1: calculate;
     2: writeln('правильно');
     else writeln('цифра не подходит');
    end;
  until c = 2;
end;
begin
  Main;
end.
