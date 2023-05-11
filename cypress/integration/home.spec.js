/// <reference types="cypress" />

describe('home-page', () => {
  beforeEach(() => {
    cy.visit('/')
  })
  
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
})