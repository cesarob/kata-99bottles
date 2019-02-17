require_relative '../bottles'

RSpec.describe '99bottles' do
  let (:expected_poem) { File.read("/app/spec/data/99bottles.txt")}

  it "generates song" do
    expect(Bottles.new.song).to eq(expected_poem)
  end
end
