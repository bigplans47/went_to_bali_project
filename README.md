![Ticketing](/img/landing_page.png?raw=true "landing_page")

Refactored Site Landing Page

Project: Refactoring an E-Commerce Site that was not polished and needed updates, the previous developer has left for Bali for months of tech free living.

Project Setup

After cloning run $ bundle install

Then setup database with $rake db:create  

If there are gem version issues run $bundle exec rake db:create

Run Migration to make tables $ rake db:migrate

To create a preview site with dummy values loaded in run $ rake db:seed

To launch the preview site run $ rails server

What the site does:

Need to add the following AJAX to the site.

1.Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

2.Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.

3.Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

Additional Features
Refactored the site to meet objectives below:

Ensure that users can't order a negative number of items.
Add flash messages for signing up, signing in and signing out.
Add product update and delete functionality for admins.
Add admin flash messages for adding, updating and deleting products.
Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
Add product validations.
Add admin links to navbar so admins can easily add, update and delete products.

What else can be improved?
Add Paperclip for product image upload.
Add Stripe so users can pay when finalizing orders.
Add password validations to ensure a user's password is sufficiently complex.
Fix the row height for products, which can quickly become uneven.
Add integration testing for AJAX functionality.
Add further AJAX functionality where it might be useful.

Bugs/Issues

Need 2 clicks to show product description

Needs testing built
