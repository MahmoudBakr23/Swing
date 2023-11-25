require 'rails_helper'

RSpec.describe NavigationHelper, :type => :helper do
  describe 'Navigation Helper Rendering Options' do
    context 'when a user is signed in' do
      before(:each) { allow(helper).to receive(:user_signed_in?).and_return(true) }

      context '#collapsible_links_partial_path' do
        it "returns the signed_in_links_partial's path" do
          expect(helper.collapsible_links_partial_path).to(
            eq 'layouts/navigation/collapsible_elements/signed_in_links'
          )
        end
      end
    end

    context 'when a user is signed off' do
      before(:each) { allow(helper).to receive(:user_signed_in?).and_return(false) }

      context '#collapsible_links_partial_path' do
        it "returns the non_signed_in_links_partial's path" do
          expect(helper.collapsible_links_partial_path).to(
            eq 'layouts/navigation/collapsible_elements/non_signed_in_links'
          )
        end
      end
    end

  end
end
