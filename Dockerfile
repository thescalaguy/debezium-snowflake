FROM debezium/connect:3.0.0.Final

# -- Create the directory for storing the connector and associated files
RUN mkdir /kafka/connect/snowflake-kafka-connector

# -- Download the connector
RUN curl -o /kafka/connect/snowflake-kafka-connector/snowflake-kafka-connector.jar "https://repo1.maven.org/maven2/com/snowflake/snowflake-kafka-connector/3.0.0/snowflake-kafka-connector-3.0.0.jar"

# -- Download BouncyCastle
RUN curl -o /kafka/connect/snowflake-kafka-connector/bc-fips.jar "https://repo1.maven.org/maven2/org/bouncycastle/bc-fips/1.0.1/bc-fips-1.0.1.jar"
RUN curl -o /kafka/connect/snowflake-kafka-connector/bcpkix-fips.jar "https://repo1.maven.org/maven2/org/bouncycastle/bcpkix-fips/1.0.3/bcpkix-fips-1.0.3.jar"