class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
    	t.string :unique_id
    	t.string :parent_id
    	t.string :content_name, null: false, default: ''
    	t.integer :content_type, null: false, default: 0
    	t.string :content_article_link, null: false, default: ''
    	t.string :content_video_link, null: true, default: ''
      t.string :question_link, null: false, default: ''
      t.boolean :extra_question,null: true, default: ''

      t.timestamps
    end
  end
end
