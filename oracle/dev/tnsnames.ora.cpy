# This file contains the syntax information for 
# the entries to be put in any tnsnames.ora file
# The entries in this file are need based. 
# There are no defaults for entries in this file
# that Sqlnet/Net3 use that need to be overridden 
#
# Typically you could have two tnsnames.ora files
# in the system, one that is set for the entire system
# and is called the system tnsnames.ora file, and a
# second file that is used by each user locally so that
# he can override the definitions dictated by the system
# tnsnames.ora file.

# The entries in tnsnames.ora are an alternative to using
# the names server with the onames adapter.
# They are a collection of aliases for the addresses that 
# the listener(s) is(are) listening for a database or 
# several databases.

# The following is the general syntax for any entry in 
# a tnsnames.ora file. There could be several such entries 
# tailored to the user's needs.

deta0_1, deta0_1.usps.gov =
   (Description=
      (address = (protocol = tcp)(host = eagnmnmed5da)(port = 2022))
        (Connect_data=(service_name = deta0_1.usps.gov))
    )

deta0_2, deta0_2.usps.gov =
  (Description=
      (address = (protocol = tcp)(host = eagnmnmed5db)(port = 2022))
        (Connect_data=(service_name = deta0_2.usps.gov))
    )

deta0,deta0.usps.gov =
  (Description =
    (Failover=ON)
    (Address_List=
      (Load_Balance=OFF)
      (address = (protocol = tcp)(host = eagnmnmed5da)(port = 2022))
      (address = (protocol = tcp)(host = eagnmnmed5db)(port = 2022))
    )
    (Connect_data=(service_name = deta0.usps.gov) )
  )
eta_adm = (Description =
    (Failover=ON)
    (Address_List=
      (Load_Balance=OFF)
      (address = (protocol = tcp)(host = eagnmnmed5da)(port = 2022))
      (address = (protocol = tcp)(host = eagnmnmed5db)(port = 2022))
    )
    (Connect_data=(service_name = deta0.usps.gov) )
  )
agat_usr = (Description =
    (Failover=ON)
    (Address_List=
      (Load_Balance=OFF)
      (address = (protocol = tcp)(host = eagnmnmed5da)(port = 2022))
      (address = (protocol = tcp)(host = eagnmnmed5db)(port = 2022))
    )
    (Connect_data=(service_name = deta0.usps.gov) )
  )