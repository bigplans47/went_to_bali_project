$(function() {
// used to add item to cart
  $('#new_order_item input[type=submit]').click(function() {
    // alert('You clicked add to cart!')
    $(this).parent('form').submit()
  });
});
