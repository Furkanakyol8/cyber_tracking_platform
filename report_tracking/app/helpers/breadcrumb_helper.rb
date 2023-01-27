module BreadcrumbHelper
  def breadcrumb(name)
    case name
    when :home
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Ana Sayfa", root_path
      end
    when :edit_customer
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Düzenle", edit_customer_path
      end
    when :edit_report
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Rapor Düzenle", edit_report_path
      end
    when :new_report
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Yeni Rapor",  new_report_path
      end
    when :edit_user_registration
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Profil Düzenle", edit_user_registration_path(current_user)
      end
    when :profiles
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Profil", profile_path
      end
    when :customers
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Müşteriler", customers_path
      end
    when :reports
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Raporlar", reports_path
      end
    when :services
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Hizmetler", services_path
      end
    when :about
      content_tag(:li, class: "breadcrumb-item") do
        link_to "Hakkımızda", about_path
      end
    when :contact
      content_tag(:li, class: "breadcrumb-item") do
        link_to "İletişim", contact_path
        
      end
    end
  end
end
