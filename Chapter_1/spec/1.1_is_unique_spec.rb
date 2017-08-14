require_relative('../lib/1.1_is_unique')

describe 'detects if characters are unique in a word' do
  let(:word1) {""}
  let(:word2) {"banana"}
  let(:word4) {"orange"}

  it 'Should return true for empty string' do
    expect(is_unique?(word1)).to eq(true)
  end

  it 'Should return true, since nothing repeats' do
    expect(is_unique?(word4)).to eq(true)
  end

  it 'Should return false, since there repeating characters' do
    expect(is_unique?(word2)).to eq(false)
  end
end
