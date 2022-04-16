require './lib/caesar_cipher'

describe CaesarCipher do
    describe "#caesar_cipher" do
        it "Take in a string and the shift factor and then outputs the modified string." do
            caesarcipher = CaesarCipher.new
            expect(caesarcipher.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
        end
    end
end
