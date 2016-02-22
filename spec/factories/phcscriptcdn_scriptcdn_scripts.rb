# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phcscriptcdn_scriptcdn_script, :class => 'Scriptcdn::Script' do
    scrptname "MyString"
    scrptdescription "MyText"
    scriptversion nil
  end
end
