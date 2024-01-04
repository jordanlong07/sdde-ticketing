Given('I am logged in') do
  @user = FactoryBot.create(:user)
  visit new_user_session_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'commit'
end

When('I am on the new ticket page') do
  visit new_ticket_path
end

When('I fill in the new ticket form with valid information') do
  @ticket = FactoryBot.build(:ticket)
  fill_in 'Title', with: @ticket.title
  fill_in 'ticket_ticket_description', with: @ticket.ticket_description
  fill_in 'Due date', with: @ticket.due_date
  select @ticket.priority, from: 'ticket_priority'
end

When('I submit the form') do
  click_button 'Create Ticket'
end


Then('the new ticket should be created in the system') do
  visit root_path
  expect(page).to have_content(@ticket.title)
end


And('I should be able to visit the edit ticket page') do
  ticket_id = Ticket.find_by(title: @ticket.title)
  visit edit_ticket_path(ticket_id.id)
end

When('I update the description') do
  @ticket.ticket_description = "This is a new description"
  fill_in 'ticket_ticket_description', with: @ticket.ticket_description
  click_button 'Update Ticket'
end

When('I am on the home page') do
  visit root_path
end

When('I should see the updated description') do
  expect(page).to have_content(@ticket.ticket_description)
end

When('I go to the ticket page') do
  @ticket_id = Ticket.first()
  visit ticket_path(@ticket_id.id)
end