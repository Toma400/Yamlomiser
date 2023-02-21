# 1. build the .exe file (build folder)
# 2. combine .exe file with values.yaml into .zip file (build folder)
# 3. remove .exe file

OUT = "build/randomiser.exe"

begin
  File.delete(OUT) if File.exist?(OUT)

  system("ocra --console --no-dep-run --verbose --output build/randomiser.exe --icon rand.png randomiser.rb")
  File.delete("tmpin") if File.exist?("tmpin")
rescue
  puts "Build failed."
  exit!
end
