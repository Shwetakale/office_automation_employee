module OfficeAutomationEmployee
  FactoryGirl.define do
    factory :admin, class: User do
      email "admin@gmail.com"
      password "abcdabcd"
      password_confirmation "abcdabcd"
      role ['admin']
    end

    factory :user, class: User do
      email "user@gmail.com"
      password "12345678"
      password_confirmation "12345678"
      role ['software_engineer']
    end
  end
end