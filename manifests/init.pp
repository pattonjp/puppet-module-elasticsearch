class elasticsearch(
  $version  = '0.19.8',
  $cwd = '/usr/local/src',
  $cluster_name = 'elasticsearch',
  $node_master = true,
  $node_data = true,
  $index_number_of_shards = 5,
  $index_number_of_replicas = 1,
  $bind_host = '127.0.0.1'
) {
  
  $download = "https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-${elasticsearch::version}.deb"
  
  include elasticsearch::install, 
          elasticsearch::configure, 
          elasticsearch::service
}