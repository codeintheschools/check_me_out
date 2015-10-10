require 'rails_helper'

RSpec.describe Thing, '#check_out_quantity' do
  it 'handles pending check outs' do
    t = Thing.create!(name: 'Laptop', quantity: 10)

    expect(t.check_out_quantity).to eq 0

    co = t.check_outs.create!(name: 'Paul', quantity: 4)

    expect(t.check_out_quantity).to eq 4

    co.complete

    expect(t.check_out_quantity).to eq 0
  end
end
