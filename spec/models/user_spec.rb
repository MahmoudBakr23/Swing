require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Associations' do
    let(:posts_association) { described_class.reflect_on_association(:posts) }

    context 'Post associations' do
      it 'has_many posts' do
        expect(posts_association.macro).to eq :has_many
      end
      it 'has dependent: option set to :destroy' do
        expect(posts_association.options[:dependent]).to eq :destroy
      end
    end
  end
end
