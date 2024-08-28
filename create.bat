@echo off
setlocal enabledelayedexpansion

rem Путь к исходному файлу
set "source_file=agata-bez-bageta.html"

rem Строка с именами для файлов, разделёнными запятыми
set "names=ameliya-baget,ameliya-bez-bageta,ampir,angliyskaya-reshetka,blyuz,venetsiya,verona,viktoriya-baget,viktoriya-bez-bageta,viktoriya-2-baget,viktoriya-2-bez-bageta,gamma,gretsiya-baget,dzhuliya-baget,dzhuliya-bez-bageta,evro,lotos,marsel-baget,marsel-bez-bageta,marsel-paryaschaya-filenka,mishel,natali,omega,palermo-baget,palermo-bez-bageta,portal-karniz-baron,portal-karniz-palermo,portal-karniz-prestizh,portal-karniz-standart,premer-1,premer-2,rio,siena-baget,siena-bez-bageta,silviya-bez-bageta,sofiya-bez-bageta,stil,tyulpan,fleyta,eksklyuziv"

rem Префикс для новых файлов (можно оставить пустым)
set "prefix="

rem Разделение строки на имена по запятым
for %%a in ("%names:,=" "%") do (
    rem Формирование нового имени файла
    set "new_name=!prefix!%%~a.html"
    
    rem Копирование исходного файла с новым именем
    copy "%source_file%" "!new_name!"
    
    echo "Скопирован файл %source_file% в !new_name!"
)

echo "Операция завершена."
pause
