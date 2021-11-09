require 'spec_helper'

describe Post do
    let(:sample_content){
        Faker::Lorem.paragraphs.join
    }

    describe '#content_keywords' do
        it 'returns X keywords' do
            post = Post.new(content: sample_content)

            expect(post.content_keywords(4).length).to eq 4
        end

        it 'returns keywords that are present in content' do
            post = Post.new(content: sample_content)

            expect(post.content.split).to include(*post.content_keywords(4))
        end
    end
end