require_relative '../bottles'

RSpec.describe '99bottles' do
  let (:expected_poem) { File.read("/app/spec/data/99bottles.txt")}

  it "generates poem" do
    poem = generate_poem(99)
    expect(poem).to eq(expected_poem)
  end
end
