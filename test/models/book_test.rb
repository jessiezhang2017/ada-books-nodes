require "test_helper"
require 'date'

describe Book do
  let(:book) {
    Book.new title: 'War and Peace', author_id: Author.first.id, description: 'blah', date_published: Date.parse('2018-10-09')
  }

  it "must be valid" do
    expect(book).must_be :valid?
  end
end
