// cypress/integration/cart_count.spec.js

describe('Cart Count', () => {
  beforeEach(() => {
    // Visit the home page before each test
    cy.visit('http://localhost:3000/');
  });

  it('Updates cart count when adding products', () => {
    // Store the initial cart count
    cy.get('li.nav-item.end-0').find('.nav-link').invoke('text').as('initialCartCount').then((initialCartCount) => {
      cy.log(`Intial Cart Count: ${initialCartCount}`)
    });
    // cy.visit('http://localhost:3000/')
    // Click the "Add to Cart" button for one of the products
    cy.get('article').first().find('.btn').click({force: true});

    // Wait for a moment to allow the cart count to update
    cy.wait(1000); // Adjust the wait time if necessary

    // Get the updated cart count
    cy.get('li.nav-item.end-0').find('.nav-link').invoke('text').as('updatedCartCount').then((updatedCartCount)=>{
      cy.log(`updated cart count: ${updatedCartCount}`)
    });

    // Assert that the cart count has increased by 1
    cy.get('li.nav-item.end-0')
    .find('.nav-link')
    .invoke('text')
    .as('updatedCartCount')
    .then((updatedCartCount) => {
      cy.log(`updated cart count: ${updatedCartCount}`);
      expect(updatedCartCount).to.equal(' \n          My Cart (1) ');
    });
  });
});
