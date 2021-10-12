require_relative '../lib/caesar_cipher.rb'

describe 'caesar_cihper' do 
  it "rejects invalid input, works with any integer, loops properly and respect the original typographical case" do
    expect(caesar_cipher("cat", "dog")).to eq("Please enter a valid input: string and integer")
    expect(caesar_cipher("cat", 4.71)).to eq("Please enter a valid input: string and integer")
    expect(caesar_cipher(7, 7)).to eq("Please enter a valid input: string and integer")
    expect(caesar_cipher('Apple-Piezzz', 3)).to eq('Dssoh-Slhccc')
    expect(caesar_cipher('Bumblebee', -2)).to eq('Zskzjczcc')
  end
end
