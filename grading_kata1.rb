def grademaker()
  hash = {}
  answer = "yes"
  
  while answer == "yes"
  p "Would you like to input a student and grade?..(yes/no)"
  answer = gets.chomp
    case answer 
      when "yes"
        puts "Please add a name: "
        name = gets.chomp
         hash[name] = name
        puts "Please enter grade: "
        grade = gets.chomp.to_i
        hash[name] = grade.to_i
      when "no"
        break
      end
  
    case grade
    when 0..40 then changedgrade = grade
    when 41..45 then changedgrade = 45
    when 46..50 then changedgrade = 50
    when 51..55 then changedgrade = 55
    when 56..60 then changedgrade = 60
    when 61..65 then changedgrade = 65
    when 66..70 then changedgrade = 70
    when 71..75 then changedgrade = 75
    when 76..80 then changedgrade = 80
    when 81..85 then changedgrade = 85
    when 86..90 then changedgrade = 90
    when 91..95 then changedgrade = 95
    when 96..100 then changedgrade = 100
    else 
    "Invalid Score"
  end
  hash[name] = changedgrade.to_s
end
  p hash  
  puts "Here is your gradebook: #{hash.to_a}"
  hash_array = hash.to_a
  hash_array.each do |n,grade|
    puts n
    puts grade
  end
end

 p grademaker()










