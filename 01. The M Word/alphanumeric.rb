require 'rspec'

class String
  def to_alphanumeric()
    gsub(/[^\w\s]/, '')
  end
end

RSpec.describe "ToAlphanumeric" do
  it 'test strip non alphanumeric characters' do
    expect("#3 the Magic Number?".to_alphanumeric).to eq("3 the Magic Number")
  end
end