module ServicesHelper
    def external_link(link_text, link_url)
        link_to link_text, link_url, target: "_blank"
      end
      
end
