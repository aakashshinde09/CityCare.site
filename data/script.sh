# Define the new values
new_host="database-1.cru2a806a2xh.us-east-1.rds.amazonaws.com"
new_db="citycare"
new_user="admin"
new_password="akash123"

# Update the persistence.xml file
sed -i "s|jdbc:mysql://localhost:3306/hospital3?createDatabaseIfNotExist=true|jdbc:mysql://${new_host}:3306/${new_db}?createDatabaseIfNotExist=true|" /var/lib/jenkins/workspace/citycare/src/main/resources/META-INF/persistence.xml
sed -i "s|<property name=\"javax.persistence.jdbc.user\" value=\"root\" />|<property name=\"javax.persistence.jdbc.user\" value=\"${new_user}\" />|" /var/lib/jenkins/workspace/citycare/src/main/resources/META-INF/persistence.xml
sed -i "s|<property name=\"javax.persistence.jdbc.password\" value=\"Akash\" />|<property name=\"javax.persistence.jdbc.password\" value=\"${new_password}\" />|" /var/lib/jenkins/workspace/citycare/src/main/resources/META-INF/persistence.xml
