require './move_me'

describe MoveMe do

  it 'can be initialised with a x, y and direction' do
    subject = MoveMe.new(1,2,:N)
    expect(subject.x_coord).to eql 1
    expect(subject.y_coord).to eql 2
    expect(subject.direction).to eql :N
  end

  it 'can move in a straight line vertically' do
    subject = described_class.new(0,0,:N)
    subject.move(:G)
    expect(subject.x_coord).to eql 0
    expect(subject.y_coord).to eql 1
    expect(subject.direction).to eql :N
  end

  it 'can move in a straight line horizontally' do
    subject = described_class.new(0,0,:E)
    subject.move(:G)
    expect(subject.x_coord).to eql 1
    expect(subject.y_coord).to eql 0
    expect(subject.direction).to eql :E
  end

  it 'can change direction anti-clockwise' do
    subject = described_class.new(0,0,:N)
    subject.move(:L)
    expect(subject.x_coord).to eql 0
    expect(subject.y_coord).to eql 0
    expect(subject.direction).to eql :W
  end

  it 'can change direction clockwise' do
    subject = described_class.new(0,0,:N)
    subject.move(:R)
    expect(subject.x_coord).to eql 0
    expect(subject.y_coord).to eql 0
    expect(subject.direction).to eql :E
  end

end
