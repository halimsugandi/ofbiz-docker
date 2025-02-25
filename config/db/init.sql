CREATE DATABASE IF NOT EXISTS ofbiz;
CREATE DATABASE IF NOT EXISTS ofbiz_olap;
CREATE DATABASE IF NOT EXISTS ofbiz_tenant1;
CREATE DATABASE IF NOT EXISTS ofbiz_tenant2;
GRANT ALL PRIVILEGES ON ofbiz.* TO 'ofbizuser'@'%' IDENTIFIED BY 'ofbizpass';
GRANT ALL PRIVILEGES ON ofbiz_olap.* TO 'ofbizuser'@'%' IDENTIFIED BY 'ofbizpass';
GRANT ALL PRIVILEGES ON ofbiz_tenant1.* TO 'ofbizuser'@'%' IDENTIFIED BY 'ofbizpass';
GRANT ALL PRIVILEGES ON ofbiz_tenant2.* TO 'ofbizuser'@'%' IDENTIFIED BY 'ofbizpass';
FLUSH PRIVILEGES;
