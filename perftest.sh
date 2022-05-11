host="fabmedical-616296.mongo.cosmos.azure.com"
username="fabmedical-616296"
password="OuSVPFAIswP79RkZ7YoQHmWk3sXtobp0azWnp6IzoRfofSAzyF4VHlwrqHSjKYc94hieLxtW1EVAnzcGb1An4w=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
