require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  let(:valid_attributes) {
    { title: 'test', body: 'body' }
  }

  let(:user) { create(:user) }

  before do
    sign_in user
  end

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all posts as @posts" do
      post = Post.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:posts)).to eq([post])
    end
  end

  describe "GET #show" do
    it "assigns the requested post as @post" do
      post = Post.create! valid_attributes
      get :show, {:id => post.to_param}, valid_session
      expect(assigns(:post)).to eq(post)
    end
  end

end
