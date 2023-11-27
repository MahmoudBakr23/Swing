require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Associations' do
    let(:user_association) { described_class.reflect_on_association(:user) }
    let(:category_association) { described_class.reflect_on_association(:category) }
      # described_class method is an RSpec method to refer to the class is being tested "Post"
      # We can simply remove it and put Post.reflect_on_asso.......etc. However. using the
      # described_class method is a bes practice because while refactoring the class name
      # might be changing but the test will always refer to the described class in it.
      # reflect_on_association is an ActiveRecord method that retrieves the full information about the association
      # the two models
    context 'User associations' do
      it 'belongs_to user' do
        expect(user_association.macro).to eq :belongs_to
        # macro is to return the exact type of association ex => :has_many
      end
    end
    context 'Category associations' do
      it 'belongs_to category' do
        expect(category_association.macro).to eq :belongs_to
      end
    end
  end
end
