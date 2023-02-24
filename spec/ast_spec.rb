# frozen_string_literal: true

RSpec.describe Calx::AST::Integer do
  it "stores one integer value" do
    expect { Calx::AST::Integer.new(100) }.not_to raise_error
    expect { Calx::AST::Integer.new("foo") }.to raise_error(Calx::AST::NodeTypeError)
  end
end
