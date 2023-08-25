# Elasticsearch & ELK
## Running docker
* [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)
* [Install Elasticsearch with Docker](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker)

### Start a single-node cluster with Docker
1. create docker network

```bash
docker network create elastic
```
2. start docker

```bash
    # first time
    docker run --name es01 --net elastic -p 9200:9200 -it docker.elastic.co/elasticsearch/elasticsearch:8.9.1


    # console output

    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ✅ Elasticsearch security features have been automatically configured!
    ✅ Authentication is enabled and cluster connections are encrypted.

    ℹ️  Password for the elastic user (reset with `bin/elasticsearch-reset-password -u elastic`):
      QOwNSBJJZFOD_HFR_OlH

    ℹ️  HTTP CA certificate SHA-256 fingerprint:
      e4dd64a5880413ef2629ec752481bcc18a87a041a218bbb0bcb698b6f21483aa

    ℹ️  Configure Kibana to use this cluster:
    • Run Kibana and click the configuration link in the terminal when Kibana starts.
    • Copy the following enrollment token and paste it into Kibana in your browser (valid for the next 30 minutes):
      eyJ2ZXIiOiI4LjkuMSIsImFkciI6WyIxNzIuMTkuMC4yOjkyMDAiXSwiZmdyIjoiZTRkZDY0YTU4ODA0MTNlZjI2MjllYzc1MjQ4MWJjYzE4YTg3YTA0MWEyMThiYmIwYmNiNjk4YjZmMjE0ODNhYSIsImtleSI6ImpvZVFLWW9CbkI0SGJNNE9wS1Z0OmhkSEFaZTBlUlYtMEpKOUVXRnlGYmcifQ==

    ℹ️ Configure other nodes to join this cluster:
    • Copy the following enrollment token and start new Elasticsearch nodes with `bin/elasticsearch --enrollment-token <token>` (valid for the next 30 minutes):
      eyJ2ZXIiOiI4LjkuMSIsImFkciI6WyIxNzIuMTkuMC4yOjkyMDAiXSwiZmdyIjoiZTRkZDY0YTU4ODA0MTNlZjI2MjllYzc1MjQ4MWJjYzE4YTg3YTA0MWEyMThiYmIwYmNiNjk4YjZmMjE0ODNhYSIsImtleSI6ImpZZVFLWW9CbkI0SGJNNE9wS1ZwOlFvRVJES3BzUVpHMl9CSVl2R1g0YlEifQ==

      If you're running in Docker, copy the enrollment token and run:
      `docker run -e "ENROLLMENT_TOKEN=<token>" docker.elastic.co/elasticsearch/elasticsearch:8.9.1`
 ```

3. copy certificate 

```bash
docker cp es01:/usr/share/elasticsearch/config/certs/http_ca.crt .
```

4. test communication access

```bash
# password=QOwNSBJJZFOD_HFR_OlH
❯ curl --cacert ~/.ssh/http_ca.crt -u elastic https://localhost:9200
Enter host password for user 'elastic':
{
  "name" : "9afa5304a854",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "NK3XXBUVTB2mSdYFpJjnyg",
  "version" : {
    "number" : "8.9.1",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "a813d015ef1826148d9d389bd1c0d781c6e349f0",
    "build_date" : "2023-08-10T05:02:32.517455352Z",
    "build_snapshot" : false,
    "lucene_version" : "9.7.0",
    "minimum_wire_compatibility_version" : "7.17.0",
    "minimum_index_compatibility_version" : "7.0.0"
  },
  "tagline" : "You Know, for Search"
}

```

5. you can generate enrollment token for use with new nodes
```bash 
docker exec -it es01 /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s node

```

6. run second node


```bash
❯ docker exec -it es01 /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s node
WARNING: Owner of file [/usr/share/elasticsearch/config/users] used to be [root], but now is [elasticsearch]
WARNING: Owner of file [/usr/share/elasticsearch/config/users_roles] used to be [root], but now is [elasticsearch]
eyJ2ZXIiOiI4LjkuMSIsImFkciI6WyIxNzIuMTkuMC4yOjkyMDAiXSwiZmdyIjoiZTRkZDY0YTU4ODA0MTNlZjI2MjllYzc1MjQ4MWJjYzE4YTg3YTA0MWEyMThiYmIwYmNiNjk4YjZmMjE0ODNhYSIsImtleSI6Imo0ZXhLWW9CbkI0SGJNNE9hS1hiOjc1YXhOOUk1VDNXQWI0R1g3SktyNXcifQ==
❯
docker run -e ENROLLMENT_TOKEN="eyJ2ZXIiOiI4LjkuMSIsImFkciI6WyIxNzIuMTkuMC4yOjkyMDAiXSwiZmdyIjoiZTRkZDY0YTU4ODA0MTNlZjI2MjllYzc1MjQ4MWJjYzE4YTg3YTA0MWEyMThiYmIwYmNiNjk4YjZmMjE0ODNhYSIsImtleSI6Imo0ZXhLWW9CbkI0SGJNNE9hS1hiOjc1YXhOOUk1VDNXQWI0R1g3SktyNXcifQ==" --name es02 --net elastic -it docker.elastic.co/elasticsearch/elasticsearch:8.9.1

```
