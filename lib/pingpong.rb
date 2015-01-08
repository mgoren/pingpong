class Fixnum
  define_method(:pingpong) do
    output = []

    self.times() do |times|
      num = times+1
      if num.%(3).eql?(0) and num.%(5).eql?(0)
        output.push("pingpong")
      elsif num%3 == 0
        output.push("ping")
      elsif num.%(5).eql?(0)
        output.push("pong")
      else
        output.push(num)
      end
    end

    output

  end
end

#puts(35.pingpong())
