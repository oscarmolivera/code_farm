RSpec.describe 'Challenge' do
  it 'Should handle encoding' do
    expect('Man '.to_ascii85).to eq('<~9jqo^~>')
    expect('easy'.to_ascii85).to eq('<~ARTY*~>')
  end
  it 'Should handle decoding' do
    expect('<~ARTY*~>'.from_ascii85).to eq('easy')
  end
end
