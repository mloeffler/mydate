Stata package mydate
====================

Little Stata program to get the current timestamp formatted as YYYY-MM-DD.
Just call it by typing

    . mydate

The timestamp will be stored in the results:

    . return list
    macros:
                   r(date) : "2014-06-10"

You can access it by:

    . di "`r(date)'"
    2014-06-10
    

## Info

2014, [Max Löffler](http://www.zew.de/en/staff/mlo)

