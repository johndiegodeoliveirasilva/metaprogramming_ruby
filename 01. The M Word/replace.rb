class Array
  def replace(orginal, replacement)
    self.map { |e| e == orginal ? replacement : e }
  end
end

RSpec.describe 'Test Replace' do
  it 'replace values' do
    original = ['one', 'two', 'one', 'three']
    replaced = original.replace('one', 'zero')
    expect(replaced).to eq(['zero', 'two', 'zero', 'three'])
  end
end
