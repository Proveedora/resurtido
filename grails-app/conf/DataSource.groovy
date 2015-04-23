dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "org.postgresql.Driver"
    username = "postgres"
    password = "123456"   
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true  //false para postgres
    cache.provider_class = 'org.firebirdsql.pool.FBSimpleDataSource' //firebird
    //cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // postgres
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost:5432/resurtido" 
            
        }
        dataSource_firebird {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            driverClassName = "org.firebirdsql.jdbc.FBDriver"
            dialect = "org.hibernate.dialect.FirebirdDialect"
            username = "SYSDBA"
            password = "050954ICA"
            url = "jdbc:firebirdsql://localhost:3050/C:/promosa/winvecaja.fdb"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataSource{
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost:5432/resurtido" 
            
        }
         dataSource_firebird {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            driverClassName = "org.firebirdsql.jdbc.FBDriver"
            dialect = "org.hibernate.dialect.FirebirdDialect"
            username = "SYSDBA"
            password = "050954ICA"
            url = "jdbc:firebirdsql://localhost:3050/C:/promosa/winvecaja.fdb"
        }
    }
}
