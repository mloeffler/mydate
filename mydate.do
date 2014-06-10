/**
 * DELIVERS THE CURRENT DATE FORMATTED AS YYYY-MM-DD
 *
 * @author  Max Löffler <loeffler@zew.de>
 * @version 0.1 
 *
 * 2014-06-10   Initial version
 */


cap program drop mydate
program define mydate, rclass
	local y = string(year(d(`c(current_date)')))
	local m = string(month(d(`c(current_date)')))
	local d = string(day(d(`c(current_date)')))
	if (strlen("`m'") == 1) local m "0`m'"
	if (strlen("`d'") == 1) local d "0`d'"
	
	//local t = subinstr(substr("`c(current_time)'", 1, 5), ":", "-", .)
	
	return local date "`y'-`m'-`d'"
end

***
