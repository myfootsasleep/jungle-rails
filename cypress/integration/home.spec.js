describe('Jungle App', () => {
  it('Visits the home page', () => {
    cy.visit('http://localhost:3000/');

    // You can add additional assertions or interactions here, if needed
    // For example, you can assert that certain elements are present on the home page.
    // cy.get('.some-element').should('be.visible');
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  it("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });
});