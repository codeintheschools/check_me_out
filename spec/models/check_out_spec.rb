require 'rails_helper'

RSpec.describe CheckOut, '.pending' do
  it 'returns only pending check outs' do
    t = Thing.create(name: 'Laptop', quantity: 5)

    pending = t.check_outs.create!(name: 'Paul', quantity: 1)

    complete = t.check_outs.create!(name: 'Dale', quantity: 2)
    complete.complete

    result = t.check_outs.pending

    expect(result).to eq [pending]
  end
end
