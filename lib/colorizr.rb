class String
  @@colors = {red: "\e[31m", green: "\e[32m", yellow: "\e[33m", blue: "\e[34m", pink: "\e[35m", light_blue: "\e[94m", white: "\e[97m", light_grey: "\e[37m", black: "\e[30m"}

  def self.create_colors
    @@colors.keys.each do |color|
      color_method = %Q{
        def #{color}
          "#{@@colors[color]}\#{self}\e[0m"
        end
      }
      class_eval(color_method)
    end
  end

  def self.colors
    @@colors.keys
  end

  def self.sample_colors
    @@colors.keys.each do |color|
      puts "This is #{color.to_s.send(color)}"
    end
    return
  end

end

String.create_colors
