require 'test_helper'

class GyazbyTest < Minitest::Test

  def setup
    Dotenv.load(File.expand_path("./.env", File.dirname(__FILE__)))
    @client = Gyazby::Client.new(ENV['GYAZO_TOKEN'])
    @image = File.expand_path("test.png", File.dirname(__FILE__))
  end

  def test_list
    list = @client.list
    assert_equal list.class, Array
  end

  def test_upload
    result = @client.upload(@image)
    assert result.permalink_url.match /^https?:\/\/gyazo.com\/[a-z\d]{32}$/i
  end

  def test_delete
    up_result = @client.upload(@image)
    del_result = @client.delete(up_result.image_id)
    assert_equal up_result.image_id, del_result.image_id
  end

end
