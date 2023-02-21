require "yaml"

def err(err_text)
  puts err_text
  prompt = gets
  exit!
end

puts "==================================="
puts "Yamlomiser v.1.0"
puts "by Toma400"
puts "-----------------------------------"
#========================================
# FILE READING
begin
  file_decr = File.read("values.yaml")
  file_encr = YAML.load(file_decr)
  puts "File read correctly!"
rescue
  err("No file -values.yaml- is found, or it has syntax errors. Press -Enter- to exit.")
end

#========================================
puts "==================================="
puts "Categories in file:"
begin
  for i in file_encr.keys
    puts "| #{i}"
  end
rescue
  err("None. Press -Enter- to exit.")
end
puts "-----------------------------------"

while true
  print "Enter the category to randomise: "
  prompt = gets

  if prompt.chomp != "exit"
    begin
      read_category = file_encr[prompt.chomp]
      puts ">> [#{read_category.sample}]"
    rescue
      puts "There's no such category in file!"
    end
  else
    exit!
  end
end
