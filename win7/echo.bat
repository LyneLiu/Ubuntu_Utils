FOR /f "delims=" %%a IN (
 'dir /b /s /a-d *.md'
 ) DO (
 IF /i "%%~xa"==".md" (
  ECHO "%%~xa" 
  ECHO "%%a" 
  ECHO "%%~dpna"
 )
)