require './caesarCipher'

describe "encryption" do
  describe "encrypt" do
    it "Encrypts a string" do
      puts "Encrypts"
      expect(encrypt("SUNSHINE", 3)).to eql("VXQVKLQH")
    end
  end

  describe "encrypt2" do
    it "Encrypts a string" do
      puts "Encrypts2"
      expect(encrypt("PROGRAMMING", 2)).to eql("RTQITCOOKPI")
    end
  end

  describe "encrypt3" do
    it "Encrypts a string" do
      puts "Encrypts3"
      expect(encrypt("int!!?ernet", 3)).to eql("lqw!!?huqhw")
    end
  end
end

describe "decryption" do
  describe "decrypt" do
    it "Decrypts a string" do
      puts "Decrypts"
      expect(decrypt("Kvu'a qbknl h ivvr if paz jvcly", 7)).to eql("Don't judge a book by its cover")
    end
  end

  describe "decrypt2" do
    it "Decrypts a string" do
      puts "Decrypts2"
      expect(decrypt("qeglmri", 4)).to eql("machine")
    end
  end

  describe "decrypt2" do
    it "Decrypts a string" do
      puts "Decrypts2"
      expect(decrypt("tfdglkzex", 17)).to eql("computing")
    end
  end

  describe "decrypt2" do
    it "Decrypts a string" do
      puts "Decrypts2"
      expect(decrypt("IRGVCTXMSR", 30)).to eql("ENCRYPTION")
    end
  end
end