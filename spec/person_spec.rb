require_relative '../person'

describe Person do
  context 'When passing a name' do
    person = Person.new(id: nil, age: 25, name: 'sja', parent_permission: true)
    person_two = Person.new(id: nil, age: 12, name: 'ella', parent_permission: false)
    it 'should return first letter capital' do
      expect(person.validate_name).to eq 'Sja'
    end

    it 'should return true if he can use service' do
      expect(person.can_use_services?).to eq true
    end

    it 'should return false if he cannot use service' do
      expect(person_two.can_use_services?).to eq false
    end

    it 'should add into rentals' do
      person.add_rentals(person)
      expect(person.rentals.length).to eq 1
    end
  end
end
