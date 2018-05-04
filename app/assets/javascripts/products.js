$(function() {
// used to display product detail
  // $('.single_product').click(function(){
  //   alert('hey you clicked the product name')
  //   $('.single_product_description').show()
  // });

// used to add item to cart
  $('#new_order_item input[type=submit]').click(function() {
    // alert('You clicked add to cart!')
    $(this).parent('form').submit()
  });

});
