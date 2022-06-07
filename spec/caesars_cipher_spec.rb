# frozen_string_literal: true

require './lib/caesars_cipher'

describe Cipher do
  subject { Cipher.new }

  describe '#cipher' do
    context 'when given down-case letters and key: 1' do
      it 'ciphers letters one position down the alphabet' do
        expect(subject.cipher('abc', 1)).to eql('bcd')
      end
    end

    context 'when given down-case and up-case letters' do
      it 'ciphers keeping current case' do
        expect(subject.cipher('abcABC', 1)).to eql('bcdBCD')
      end
      it 'ciphers letters "key" positions while keeping the same case' do
        expect(subject.cipher('abcABC', 2)).to eql('cdeCDE')
      end
    end

    context 'when given mixed case letters and punctuation marks' do
      it 'ciphers letters "key" positions while keeping punctuation marks and the same case' do
        expect(subject.cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
      end
    end

    context 'when given letters, numbers and special characters' do
      it 'ciphers letters while ignoring numbers and special characters' do
        expect(subject.cipher('What a string!@%$#123', 5)).to eql('Bmfy f xywnsl!@%$#123')
      end
    end

    context 'when "key" value implies starting the alphabet over' do
      it 'ciphers letters moving to the end of the alphabet, and keep counting from the begining if nessesary' do
        expect(subject.cipher('axyz', 4)).to eql('ebcd')
      end
    end
  end
end
