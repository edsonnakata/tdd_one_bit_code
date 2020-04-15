require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it 'return the correct current power of the weapon' do
    name = FFaker::Name.first_name
    power_base = FFaker::Random.rand(2000..5000)
    power_step = FFaker::Random.rand(100..1000)

    weapon = create(:weapon, name: name, power_base: power_base, power_step: power_step)
    expect(weapon.current_power).to eq((power_base+(weapon.level - 1))*power_step)
  end
  it 'return the correct weapon title' do
    weapon = create(:weapon, level: FFaker::Random.rand(1..10))
    expect(weapon.title).to eq("#{weapon.name}##{weapon.level}")
  end
end
