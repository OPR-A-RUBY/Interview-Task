f = File.open 'text.txt', 'r'

@hh = {}

def add_to_hach word
  if !word.empty?
    word.downcase!

    cnt = @hh[word]

    @hh[word] = cnt.to_i + 1
    
  end
end


# Считываем каждую строку пока не кончится файл
f.each_line do |line|
  # Разбиваем строку на слова. В качестве разделителя принимаем несколько элементов заключённых в / /
  #                 /s - это waitspace - белое пространство (пробел, табуляция, отступ, ...)
  #                 |  - это символ логическог или (OR)
  #                 /n - это символ конца строки
  #                 Всё это выражение в целом - есть регулярное выражение для разделения строки 
  arr = line.split(/\s|\n|\.|\,|\(|\)|\;/)
  #                        Добавлены: (точка, запятая, скобки круглые и ;) - считаем их разделителями

  # puts arr.inspect

  arr.each { |word| add_to_hach(word)}

  # 
  
end

f.close

@hh.each do |key, value|
  puts "#{key} => #{value}"
end
