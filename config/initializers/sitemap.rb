Sitemap::Map.draw do
 
  # default page size is 50.000 which is the specified maximum at http://sitemaps.org.
  per_page 10
 
  url root_url, :last_mod => DateTime.now, :change_freq => 'daily', :priority => 1
  
  
  url departamentos_url, :last_mod => DateTime.now, :change_freq => 'daily', :priority => 1
  
  
  url servicios_url, :last_mod => DateTime.now, :change_freq => 'daily', :priority => 1
  
  
  url ubicacion_url, :last_mod => DateTime.now, :change_freq => 'daily', :priority => 1
  
  
  url reservas_url, :last_mod => DateTime.now, :change_freq => 'daily', :priority => 1
  
  
  url contacto_url, :last_mod => DateTime.now, :change_freq => 'daily', :priority => 1
  

  
 
end