require 'spec_helper'

module OfficeAutomationEmployee
  describe Company do

    context 'It checks presence of fields' do
      it { should have_fields(:name, :logo, :company_url) }
      it { should have_field(:registration_date).of_type(Date) }
      it { should have_field(:same_as_registered_address).of_type(Mongoid::Boolean).with_default_value_of(false) }
    end

    context 'It validates fields' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:registration_date) }
      it { should validate_uniqueness_of(:name) }
    end

    context 'It checks for associations' do
      it { should embed_one (:registered_address) }
      it { should embed_one (:current_address) }
      it { should have_many (:users) }
      it { should have_and_belong_to_many (:roles) }
    end
  end
end
