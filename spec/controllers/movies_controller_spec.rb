require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  render_views

  describe '#index' do
    specify 'that the index page loads successfully' do
      get :index
      expect(response).to be_success
      expect(response).to render_template('index')
    end
  end

  describe '#new' do
    specify 'that the new page loads successfully' do
      get :new
      expect(response).to be_success
      expect(response).to render_template('new')
    end
  end

  describe '#show' do
    let(:movie) { create(:movie) }

    specify 'that the show page loads successfully' do
      get :show, id: movie.id
      expect(response).to render_template('show')
    end
  end

  describe '#edit' do
    let(:movie) { create(:movie) }

    before  { get :edit, id: movie.id }
    subject { response }

    it { is_expected.to be_success }
    it { is_expected.to render_template('edit') }
  end

  describe '#create' do
    context 'valid attributes' do
      specify 'that a movie is created' do
        expect { post :create, movie: attributes_for(:movie) }.to change { Movie.count }.by(1)
      end

      specify 'that the user is redirected' do
        post :create, movie: attributes_for(:movie)
        expect(response).to redirect_to(movie_url(Movie.last))
      end
    end

    context 'invalid attributes' do
      let(:attrs) { { name: '' } }

      specify 'that a movie is not created' do
        expect { post :create, movie: attrs }.to_not change { Movie.count }
      end

      #this one not working
      specify 'that the user is redirected to the new page' do
        post :create, movie: attrs
        expect(response).to render_template('new')
      end
    end
  end
end
