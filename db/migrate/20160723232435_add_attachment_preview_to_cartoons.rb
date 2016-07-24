class AddAttachmentPreviewToCartoons < ActiveRecord::Migration
  def self.up
    add_attachment :cartoons, :preview
  end

  def self.down
    remove_attachment :cartoons, :preview
  end
end
