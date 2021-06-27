


RSpec.describe "homepage" do
  it "sees the header" do
    expect(page).to have_css("h1", text: "Hello World!")
  end

  it "sees a table data" do
    expect(page).to have_css("td", text: "Coding")
  end

  it "does not see table data" do
    expect(page.).to_not have_css("td", text: "Coding")
  end
end





