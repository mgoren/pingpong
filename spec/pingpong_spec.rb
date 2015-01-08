require('rspec')
require('pingpong')

describe('Fixnum#pingpong') do
    it('returns an array with numbers up to the number given') do
      expect(2.pingpong()).to(eq([1,2]))
    end
end

describe('Fixnum#pingpong') do
  it('returns an array with numbers divisible by 3 replaced by the word ping') do
    expect(3.pingpong()).to(eq([1,2,"ping"]))
  end
end

describe('Fixnum#pingpong') do
  it('returns an array with numbers divisible by 5 replaced by the word pong') do
    expect(5.pingpong()).to(eq([1,2,"ping",4,"pong"]))
  end
end

describe('Fixnum#pingpong') do
  it('returns an array with numbers divisible by both 3 and 5 replaced by the word pingpong') do
    expect(15.pingpong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"pingpong"]))
  end
end
