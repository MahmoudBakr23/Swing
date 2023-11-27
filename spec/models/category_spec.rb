require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Associations' do
    let(:posts_association) { described_class.reflect_on_association(:posts) }

    context 'Post associations' do
      it 'has_many posts' do
        expect(posts_association.macro).to eq :has_many
      end
    end
  end
end
