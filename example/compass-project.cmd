@echo off
:init
set /p pn=請輸入新增專案資料夾名稱 : 
md %pn% || goto init

echo @echo off > %pn%\watch.bat
echo compass watch >> %pn%\watch.bat

echo require 'compass/import-once/activate' >> %pn%\config.rb
echo # Require any additional compass plugins here. >> %pn%\config.rb
echo.>> %pn%\config.rb
echo require 'breakpoint' >> %pn%\config.rb
echo require 'susy' >> %pn%\config.rb
echo.>> %pn%\config.rb
echo # Set this to the root of your project when deployed: >> %pn%\config.rb
echo http_path = "/" >> %pn%\config.rb
echo css_dir = "css" >> %pn%\config.rb
echo sass_dir = "sass" >> %pn%\config.rb
echo images_dir = "images" >> %pn%\config.rb
echo javascripts_dir = "js" >> %pn%\config.rb
echo.>> %pn%\config.rb
echo # You can select your preferred output style here (can be overridden via the command line): >> %pn%\config.rb
echo # output_style = :expanded or :nested or :compact or :compressed >> %pn%\config.rb
echo output_style = :compact >> %pn%\config.rb
echo.>> %pn%\config.rb
echo # To enable relative paths to assets via compass helper functions. Uncomment: >> %pn%\config.rb
echo relative_assets = true >> %pn%\config.rb
echo.>> %pn%\config.rb >> %pn%\config.rb
echo # To disable debugging comments that display the original location of your selectors. Uncomment: >> %pn%\config.rb
echo line_comments = false >> %pn%\config.rb
echo.>> %pn%\config.rb
echo # If you prefer the indented syntax, you might want to regenerate this >> %pn%\config.rb
echo # project again passing --syntax sass, or you can uncomment this: >> %pn%\config.rb
echo # preferred_syntax = :sass >> %pn%\config.rb
echo # and then run: >> %pn%\config.rb
echo # sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass >> %pn%\config.rb
echo.>> %pn%\config.rb
echo Encoding.default_external = "utf-8" >> %pn%\config.rb
echo sourcemap = true >> %pn%\config.rb

cd %pn%
md images
md sass
md css
md js