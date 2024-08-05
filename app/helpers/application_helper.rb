module ApplicationHelper
  def dropzone_controller_div
    data = {
      controller: "dropzone",
      'dropzone-max-file-size'=>"8",
      'dropzone-max-files' => "10",
      'dropzone-accepted-files' => 'image/jpeg,image/jpg,image/png,image/gif',
      'dropzone-dict-file-too-big' => "Your image is {{filesize}}, but only images up to {{maxFilesize}} MB are allowed.",
      'dropzone-dict-invalid-file-type' => "Invalid file format. only  .jpg, .png and .gif are allowed",
    }
# dropzone dropzone-default dz-clickable
    content_tag :div, class: 'dropzone dropzone-default dz-clickable border-2 border-gray-300 border-dashed rounded-lg cursor-pointer bg-gray-50', data: data do
      yield
    end
  end
end
