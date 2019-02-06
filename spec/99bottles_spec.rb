$normal_text = "%s bottles of beer on the wall, %s bottles of beer.
Take one down and pass it around, %s bottles of beer on the wall."

$before_before_last_text = "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall."

$before_last_text = "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."

$last_text = "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"


def generate_poem(num_bottles)
  result = []
  num_bottles.downto(3) do |num|
    result.push($normal_text % [num, num, num - 1])
  end
  result.push($before_before_last_text)
  result.push($before_last_text)
  result.push($last_text)

  result.join("\n\n")
end

RSpec.describe '99bottles' do
  let (:expected_poem) { File.read("/app/spec/data/99bottles.txt")}

  it "generates poem" do
    poem = generate_poem(99)
    expect(poem).to eq(expected_poem)
  end
end
