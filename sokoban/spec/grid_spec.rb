require './lib/grid.rb'

describe Grid do

  it 'has default dimensions (width and height)' do
    grid = subject()
    expect(grid.width).to eq 19
    expect(grid.height).to eq 16
  end

  it 'can have custom defined dimensions' do
    grid = Grid.new(1, 2)
    expect(grid.width).to eq 1
    expect(grid.height).to eq 2
  end

  it 'has walls' do
    width = 3
    height = 3
    grid = Grid.new(width, height)
    expect(grid.to_s).to eq("###\n# #\n###")
  end
end
