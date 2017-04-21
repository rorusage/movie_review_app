host = 'localhost:9200'
Searchkick.client = Elasticsearch::Client.new(hosts: [host], retry_on_failure: true)
