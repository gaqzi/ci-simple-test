RSpec.describe 'Google search', type: :feature, js: true do
  # This test is hitting Google and GitHub just to make sure it's slow for a real reason,
  # maybe it would be better to build out something really fake but it'll do for now.
  it 'finds Capybara on GitHub' do
    visit 'https://google.com/'

    fill_in 'q', with: "capybara github\n"
    click_on 'README.md', wait: 20

    assert_text 'Pull requests', wait: 20
  end
end
