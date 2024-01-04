  
  When('I fill in the comment form') do
    @comment = FactoryBot.build(:comment)
    fill_in 'comment_body', with: @comment.body
  end
  
  When('I press {string}') do |string|
    click_button 'Send'
  end
  
  Then('I should see the comment') do
    expect(page).to have_content(@comment.body)
  end