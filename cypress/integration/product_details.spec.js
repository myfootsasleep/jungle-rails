describe('Product Details', () => {
  it('Visits the home page', () => {
    cy.visit('http://localhost:3000/');

    // You can add additional assertions or interactions here, if needed
    // For example, you can assert that certain elements are present on the home page.
    // cy.get('.some-element').should('be.visible');
  });
  it("Navigates to the product detail page", () => {
    cy.get("article").first().click;
  });
  it("Navigates to the product detail page", () => {
    cy.get("article").eq(2).click;
  });
  it("Navigates to the product detail page", () => {
    cy.get("article").eq(13).click;
  });

});