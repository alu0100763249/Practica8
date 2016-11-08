require "spec_helper"
require "menu"

describe Menu do
  before :all do
    @m1 = Menu::Menu.new("desayuno")
  end
  it "has a version number" do
    expect(Menu::VERSION).not_to be nil
  end

  it "Existe un título para el menu" do
    expect(@m1.titulo).not_to be_nil
  end
end
