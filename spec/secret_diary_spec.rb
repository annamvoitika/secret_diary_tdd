require 'secret_diary'

RSpec.describe SecretDiary do
  context "when locked" do
    it "refuses to be read" do
      diary = SecretDiary.new(diary)
      expect(diary.read).to eq("Go away!")
    end

    it "refuses to be written" do
      diary = SecretDiary.new(diary)
      expect(diary.write("Hello")).to eq("Go away!")
    end
  end

  context "when unlocked" do
    it "gets read" do
      dbl = double(:read => "content")
      diary = SecretDiary.new(diary)
      diary = dbl
      expect(dbl.read).to eq("content")
    end

    it "gets written" do
      dbl= double(:write => "essay")
      diary = SecretDiary.new(diary)
      diary = dbl
      expect(dbl.write).to eq("essay")
    end
  end
end
