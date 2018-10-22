require 'rails_helper'

RSpec.describe Parent, :type => :model do
  describe 'Paranoia destroy issue (with restrict error relationship)' do
    it 'deletes SonModel even though parent asset cannot be deleted due to restrict error relationship' do
      parent = Parent.create!(name: 'test')
      SonModel.create!(name: 'Test', parent: parent)
      DaughterModel.create!(name: 'Test', parent: parent)
      parent.destroy
      expect(DaughterModel.count).to eq(1)

      #FIXME: SonModel should return 1 as Parent cannot be deleted due to has_many (restrict with err) relation with DaughterModel
      #FIXME: Apparently Paranoia fails to do rollback on transaction created on SonModel and only do rollback on DaughterModel and Parent
      expect(SonModel.count).to eq(1)
    end
  end
end