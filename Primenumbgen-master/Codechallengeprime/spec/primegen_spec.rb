require 'rspec'
require_relative '../lib/primegen'

describe Primealpha do
#test 1
  it 'Primealpha is module?' do
    expect(subject.class.to_s).to eql('Module')
    expect(subject.class.to_s).not_to eql('Class')
  end
#test 2
  it 'Is class << self?' do
    expect(subject.singleton_class.to_s).to eql('#<Class:Primealpha>')
  end
#test 3
  it 'Methods exist?' do
    expect(subject).to respond_to(:primefinder)
    expect(subject).to respond_to(:pri)
    expect(subject).to respond_to(:run)
  end
#test 4
  it 'checks if .prime works' do
    expect(subject.pri(1)).to be_falsey
    expect(subject.pri(2)).to be_truthy
    expect(subject.pri(4)).to be_falsey
    expect(subject.pri(5)).to be_truthy
    expect(subject.pri(7)).to be_truthy
    expect(subject.pri(509)).to be_truthy
    expect(subject.pri(510)).to be_falsey
    expect(subject.pri(3019)).to be_truthy
    expect(subject.pri(3015)).to be_falsey
    expect(subject.pri(7919)).to be_truthy
  end
#test 5
  it 'checks range including endpoints' do
    expect(subject.primefinder(1, 11)).to include (0..11)
    expect(subject.primefinder(1000, 1020)).to include(1000..1020)
    expect(subject.primefinder(5003, 5023)).to include(5003..5023)
    expect(subject.primefinder(7901, 7919)).to include(7901..7919)
  end
#test 5a
  it 'c includes range and endpoints? , $c = c?' do
    expect(subject.primefinder(1,11)).to eql(0..11)
    expect($c).to eql(11)
    expect(subject.primefinder(7900,7920)).to include(7900..7920)
    expect($c).to eql(7920)
  end
#test 6
  it 'checks c.prime?' do
    expect(subject.primefinder(0,1))
    expect($c.prime?).to be_falsey
    expect(subject.primefinder(12,12))
    expect($c.prime?).to be_falsey
    expect(subject.primefinder(0,2))
    expect($c.prime?).to be_truthy
    expect(subject.primefinder(7919,7919))
    expect($c.prime?).to be_truthy
  end
#test 7
  it 'checks msg display when c.prime?' do
    expect(subject.primefinder(7900,7920))
    expect($msg).to match('7919 is prime number 1000')

    expect(subject.primefinder(3001,3001))
    expect($msg).to match('3001 is prime number 431')

    expect(subject.primefinder(1,11))
    expect($msg).to match('11 is prime number 5')
  end
#test 8
  it 'checks $i is correct for prime number' do
    expect(subject.primefinder(0,1))
    expect($i).to eql(0)
    expect(subject.primefinder(11,11))
    expect($i).to eql(5)
    expect(subject.primefinder(509,509))
    expect($i).to eql(97)
    expect(subject.primefinder(7919,7919))
    expect($i).to eql(1000)
  end
#test 10
  it 'checks run << primefinder?' do
    expect(subject.primefinder(0,10)).to include(0,10)
    expect(subject.run(0,10)).to match(0..10)
    expect(subject.run(100, 120)).to include(100..120)
    expect(subject.run(7900, 7920)).to include(1..7920)
  end
#test 11
  it 'Flips inverse range' do
    expect(subject.run(10,0))
    expect($x).to match_array([0,10])
    expect($y).to eql(10)

    expect(subject.run(7920,7900))
    expect($x).to match_array([7900,7920])
    expect($y).to eql(7920)
  end
# #test 12
  it 'checks reverse range message' do
    expect(subject.run(7920,7900))
    expect($rmsg).to match('range is backwards...')
  end
end