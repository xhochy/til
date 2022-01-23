@rem Interate over all directories that match a pattern
@rem use /r after /D to do this recursively

for /D %%d in ("parent_dir\*") do (
  echo %%d
)
