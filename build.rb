require 'zip'

DEBUG_MODE = true
DEBUG_MODE ? DEBUG_CMD = "--debug-extract" : DEBUG_CMD = ""

OUT_EXE = "build/yamlomiser.exe"
OUT_ZIP = "build/yamlomiser.zip"

begin
  # removes previous versions of .zip / .exe files
  File.delete(OUT_EXE) if File.exist?(OUT_EXE)
  File.delete(OUT_ZIP) if File.exist?(OUT_ZIP)

  # builds .exe file & cleans after itself
  system("ocra --console --no-dep-run #{DEBUG_CMD} --dll ruby_builtin_dlls/libgmp-10.dll --gem-full=yaml --verbose --output #{OUT_EXE} --icon build/rand.png randomiser.rb")
  File.delete("tmpin") if File.exist?("tmpin")

  # packs all files into build folder
  Zip::File.open(OUT_ZIP, create: true) do |zipfile|
    zipfile.add("values.yaml",    File.join("values.yaml"))
    zipfile.add("yamlomiser.exe", File.join(OUT_EXE))
  end
  if !DEBUG_MODE
    File.delete(OUT_EXE) if File.exist?(OUT_EXE)
  end

rescue
  puts "Build failed."
  File.open("except.log") do |f|
    f.puts e.inspect
    f.puts e.backtrace
  end
  exit!
end
