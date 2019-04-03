#! /usr/bin/bash
postgres -D /usr/local/pgsql/data
pg_ctl start -l logfile
