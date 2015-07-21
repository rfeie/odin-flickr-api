module FlickrHelper

	def user_photos(user_id, photo_count = 12)
		flickr.photos.search(:user_id => user_id)
	end

	def render_flickr_sidebar_widget(user_id, photo_count = 12, columns = 2)
		begin
			photos = user_photos(user_id)
			photos = (photos.map {|i| i}).in_groups_of(columns, false)
			render '/flickr/main_widget', photos: photos
		rescue Exception => e

			render '/flickr/unavailable',  e: e
			
		end


	end

	def get_info(photo_id)
		flickr.photos.getInfo(:photo_id => photo_id)
	end
end