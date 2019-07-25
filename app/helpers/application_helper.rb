Module ApplicationHelper
module ApplicationHelper
  def full_title page_title ="" 
  locale = params[:locale].to_s.strip.to_sym
  I18n.locale = I18n.available_locales.include?(locale) ?
    locale : I18n.default_locale
end
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end 