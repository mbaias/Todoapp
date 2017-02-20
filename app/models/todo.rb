class Todo < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { thumb: ["100x200#", :jpg],
											                original: ['400x300>', :jpg],
											                medium: ['200x300#', :jpg] },
                convert_options: { thumb: "-quality 75 -strip",
                                   original: "-quality 85 -strip" },
        				default_url: "/images/:style/missing_todo.png"

	validates_attachment_content_type :image,
						      :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
