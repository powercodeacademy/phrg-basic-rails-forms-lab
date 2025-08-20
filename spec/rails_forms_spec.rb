require "rails_helper"

RSpec.describe "Rails Forms Lab", type: :feature do
  describe "GET /teams/new" do
    it "sends a 200 status code" do
      visit "/teams/new"
      expect(page.status_code).to eq(200)
    end

    it "renders basketball team form" do
      visit "/teams/new"
      expect(page).to have_selector("form")
      expect(page).to have_field("team[name]")
      expect(page).to have_field("team[coach]")
      expect(page).to have_field("team[pg]")
      expect(page).to have_field("team[sg]")
      expect(page).to have_field("team[sf]")
      expect(page).to have_field("team[pf]")
      expect(page).to have_field("team[c]")
      expect(page).to have_selector("input[type='submit']")
    end
  end

  describe "POST /teams" do
    it "does not return error page" do
      visit "/teams/new"

      click_button
      expect(page).to_not have_text("Backtrace")
    end

    it "displays the basketball team name in the browser" do
      visit "/teams/new"

      fill_in("team[name]", with: "Bballers")
      click_button
      expect(page).to have_text("Team Name: Bballers")
    end

    it "displays the coach's name in the browser" do
      visit "/teams/new"

      fill_in("team[coach]", with: "Walter")
      click_button

      expect(page).to have_text("Coach: Walter")
    end

    it "displays the point guard's name in the browser" do
      visit "/teams/new"

      fill_in("team[pg]", with: "Jeff")
      click_button

      expect(page).to have_text("Point Guard: Jeff")
    end

    it "displays the shooting guard's name in the browser" do
      visit "/teams/new"

      fill_in("team[sg]", with: "Ralph")
      click_button

      expect(page).to have_text("Shooting Guard: Ralph")
    end

    it "displays the power forward's name in the browser" do
      visit "/teams/new"

      fill_in("team[pf]", with: "Danny")
      click_button

      expect(page).to have_text("Power Forward: Danny")
    end

    it "displays the small forward's name in the browser" do
      visit "/teams/new"

      fill_in("team[sf]", with: "Joe")
      click_button

      expect(page).to have_text("Small Forward: Joe")
    end

    it "displays the center's name in the browser" do
      visit "/teams/new"

      fill_in("team[c]", with: "Avi")
      click_button

      expect(page).to have_text("Center: Avi")
    end
  end
end
