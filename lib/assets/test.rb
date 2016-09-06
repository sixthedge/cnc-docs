require 'active_support/all'

class TestRake
  def rakeme
    puts "DIR #{Dir.pwd}"
    Dir.chdir('public/documents')
    puts "DIR #{Dir.pwd}"
  end
end