get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  p @array_canonicas = Word.canonico(@new_word)
  #@array_canonicas
  erb :word
end

post '/new_word' do
  new_word = params[:new_word]
  #@word_view = WordView.new
  
  #@word_view.show_anagrams(array_canonicas)
  redirect to ("/#{new_word}")
end