atom_feed :language => 'en-US' do |feed|
	feed.title "My Tiny Blog"
	feed.updated @posts.first.accepted
	
	@posts.each do |post|
		feed.entry post do |entry|
			entry.title post.title
			entry.summary post.teaser + '<br /><br />Read the full post: <a href="' + post_url(post)
			entry.author do |author|
				author.name post.author
			end
		end
	end
end