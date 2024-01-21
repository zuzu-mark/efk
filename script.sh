#!/bin/bash
put() {
    curl -H "Content-Type: application/json" -X PUT "http://127.0.0.1:9200/test_index1?pretty" -d '
     {
       "mappings" : {
         "properties" : {
           "hoge" : {"type" : "text"},
           "huga" : {"type" : "long"},
           "time" : {"type" : "date"}
         }
       }
     }'
}

get() {
    curl -H "Content-Type: application/json" -X GET "http://127.0.0.1:9200/test_index1?pretty"
}

add_data() {
    curl -H "Content-Type: application/json" -XPOST 'http://127.0.0.1:9200/test_index2/_doc/data1?pretty' -d '
     {
       "hoge" : "hogehoge",
       "huga" : "2020",
       "time" : "2020-09-16"
     }'
    curl -H "Content-Type: application/json" -XPOST 'http://127.0.0.1:9200/test_index2/_doc/data2?pretty' -d '
     {
       "hoge" : "hogehuga",
       "huga" : 2021,
       "time" : "2021-09-16"
     }'
}

curl -H "Content-Type: application/json" -X GET "http://127.0.0.1:9200/test_index2/_search?pretty"
