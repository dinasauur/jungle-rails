/// <reference types="cypress" />

describe('product-show-page', () => {
  beforeEach(() => {
    cy.visit('/');
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  
  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it("should click on add button of a product", () => {
    cy.get(".btn").contains("Add").click({ force: true });

    cy.contains('.nav-item', 'My Cart (1)');
  })
})