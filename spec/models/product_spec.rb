require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe '.alphabetical' do
  	it "returns [] when there are no products" do
      expect(Product.alphabetical).to eq []
    end

	  it "returns [a] when there is only one product a" do
	  	product = Product.new
	  	product.save(validate: false)
	  	expect(Product.alphabetical).to eq [product]
	   end
	  it "returns [a,b,c] after I create 3 products c, b, a" do
	    a = Product.new
	  	a.save(validate: false)
	  	b = Product.new
	  	b.save(validate: false)
	  	c = Product.new
	  	c.save(validate: false)
	  	expect(Product.alphabetical).to match_array [c, b, a]
	  end
	end

end
