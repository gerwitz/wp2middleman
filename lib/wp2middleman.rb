require 'wp2middleman/version'
require 'wp2middleman/post'
require 'wp2middleman/post_collection'
require 'wp2middleman/migrator'
require 'wp2middleman/cli'

module WP2Middleman
  def self.migrate(wp_xml_export_file, body_to_markdown = false)
    migrator = WP2Middleman::Migrator.new wp_xml_export_file, body_to_markdown: body_to_markdown
    migrator.migrate
  end
end
