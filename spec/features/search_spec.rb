require 'rails_helper'

RSpec.describe 'search for avatar', type: :feature do
   describe 'as a User' do
      it 'has a select field and a search button', :vcr do
         visit root_path

         expect(page).to have_content("The Four Nations")
         expect(page).to have_field(:nation)

         select "Fire Nation", from: :nation
         click_on "Search For Members"

         expect(current_path).to eq(search_path)

         expect(page).to have_content "Fire Nation"
         expect(page).to have_content("Member count: 20")
         
         within "#member-details-1" do
            expect(page).to have_content("Azula")
            expect(page).to have_content("Allies:")
               expect(page).to have_content("Ozai")   
               expect(page).to have_content("Zuko")   


            expect(page).to have_content("Enemies:")
               expect(page).to have_content("Iroh")
               expect(page).to have_content("Zuko")
               expect(page).to have_content("Kuei")
               expect(page).to have_content("Long")
               expect(page).to have_content("Feng")
         end
      end
   end
end