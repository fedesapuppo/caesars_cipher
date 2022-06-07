require './lib/caesars_cipher'

describe Cipher do
  subject { Cipher.new }

  describe '#cipher' do
    context 'when given low-case letters' do
      it 'ciphers letters one position down the alphabet' do
        expect(subject.cipher('abc', 1)).to eql('bcd')
      end
    end
  end
end
