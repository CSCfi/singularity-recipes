local renvVersion = '452'
local rVersion = '4.5.2'

family("r_env")

help(
string.format([[
Container-based R environment with R v. %s

For more help see: https://docs.csc.fi/apps/r-env

]], rVersion)
)

local RBase = '/appl/soft/manual/aida/x86_64/r-env'
local ruser = '/usr/lib/R/library'
local rsite = pathJoin(RBase, renvVersion, renvVersion .. '-rpackages')
local Rsnow = pathJoin(rsite, 'snow')

setenv('R_LIBS_USER', ruser)
setenv('R_LIBS_SITE', rsite)

prepend_path('PATH', Rsnow)
prepend_path('PATH', pathJoin(RBase, renvVersion))
prepend_path('PATH', pathJoin(RBase, 'wrappers', renvVersion, 'bin'))

if (mode() == "load") then
   LmodMessage("------------------------------")
   LmodMessage("r-env " .. rVersion)
   LmodMessage("https://docs.csc.fi/apps/r-env")
   LmodMessage("------------------------------")
   if (os.getenv("OMP_NUM_THREADS") == nil) then
     setenv("OMP_NUM_THREADS","1") 
   end
end
