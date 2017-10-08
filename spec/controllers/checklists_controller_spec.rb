# Tests for checklists_controller.rb
require 'rails_helper'

RSpec.describe ChecklistsController, type: :controller do
  let(:user) { create(:user) }
  let(:checklist) { create(:checklist, user) }
  before { sign_in user }
  describe '#GET current' do
    context 'user without checklist' do
      it 'creates checklist'
      it 'renders edit'
    end
    context 'user with checklist' do
      context 'checklist is current' do
        it 'renders edit page'
      end
      context 'checklist is not current' do
        it 'creates new checklist'
        it 'renders edit page'
      end
    end
  end
  describe 'GET index' do
    it "assigns logged in user to @user" do

    end
    it "assigns user's checklists to @checklists"
  end
  describe 'GET edit' do
    context 'user has checklist' do
      context 'user selected id of non-existent checklist' do
        it 'returns 404 error'
      end
    end
    context 'user has no checklist' do
      it 'returns 404 error'
    end
  end
end
