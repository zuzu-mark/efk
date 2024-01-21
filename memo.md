
```
helm upgrade --install --create-namespace -n infra voltha-infra ./voltha-infra \
    --set efk.enabled=true
```


```
kubectl port-forward -n infra --address 0.0.0.0 svc/voltha-infra-kibana 5601

curl -v -X POST -H Content-type:application/json -H kbn-xsrf:true http://localhost:5601/api/saved_objects/index-pattern/logst* -d '{"attributes":{"title":"logst*","timeFieldName":"@timestamp"}}'

kubectl port-forward -n infra --address 0.0.0.0 svc/elasticsearch-master  9200
```


```
https://qiita.com/hayapo/items/0da64f7c71b9c7e9636c
https://qiita.com/MetricFire/items/db7cb02e71f5ad09c304#5%E3%83%95%E3%83%AB%E3%82%B9%E3%82%BF%E3%83%83%E3%82%AF%E3%81%AE%E4%BE%8B
```
