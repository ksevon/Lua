function CreateRandomValue() -- Создание случаного числа
  math.randomseed(os.clock())
  return math.random(100)
end

local RandomValue = CreateRandomValue()

print("Ваша задача угадать число")

while true do
  local UserValue = io.read("*n") -- Получение числа от пользователя
  
  if RandomValue == UserValue then
    print(string.format("Верно! %s", RandomValue))
    RandomValue = CreateRandomValue()
    
  elseif RandomValue > UserValue then
    if (RandomValue - 15) < UserValue then
      print("Загаданное число близко но больше") 
    else 
      print("Загаданное число больше")
    end  
    
  elseif RandomValue < UserValue then
    if (RandomValue + 15) > UserValue then
      print("Загаданное число близко но меньше") 
    else 
      print("Загаданное число меньше") 
    end 
  end
end