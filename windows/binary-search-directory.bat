@rem Do a binary search over a set of directories

set /a COUNTER=1
setlocal ENABLEDELAYEDEXPANSION
for /D %%d in ("parent_dir\*") do (
  set /a COUNTER+=1
  echo !COUNTER!
  if !COUNTER! LEQ 500 (
     if !COUNTER! GEQ 250 (
       @rem Remove this and see whether subsequent commands pass
       rd /s /q "%%d"
       if NOT ERRORLEVEL 0 exit 1
     )
  )
)
