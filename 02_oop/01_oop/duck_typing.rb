class WhatsApp
  def call
    puts "WhatsApp call"
  end
end 

class Skype

  def call
    puts "Skype call"
  end
end

apps = [WhatsApp, Skype]

apps.each do |obj|
  obj.new.call
end
