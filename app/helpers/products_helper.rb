module ProductsHelper
  def description_for(product)
    begin
      RDiscount.new(product.description).to_html
    end.html_safe
  end

  def image_for(product)
    if product.image_url.nil? || product.image_url.empty?
      image_tag 'https://s3-us-west-2.amazonaws.com/ecommerceonrails/images/default-product.jpg'
    else
      image_tag product.image_url
    end
  end
end
