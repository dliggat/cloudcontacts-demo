module ApplicationHelper
  def link_to_add_fields(name, f, association, cssClass, title)
    # Particularly helpful: http://stackoverflow.com/questions/23777751/link-to-add-fields-unobtrusive-javascript-rails-4
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to name, "javascript:void(0)", onclick: "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", class: cssClass, title: title
  end
end
