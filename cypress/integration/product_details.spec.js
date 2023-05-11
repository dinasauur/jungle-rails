/// <reference types="cypress" />

describe('product-show-page', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  
  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it("should open up a a show view of that product", () => {
    cy.get(".products article").first().click();

    cy.contains('.product-detail', 'Scented Blade');
  })
})