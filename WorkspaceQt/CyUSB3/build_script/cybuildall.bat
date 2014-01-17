@echo off

echo -e "\r"
echo -e "******************************************************\r"
echo -e "***  	Building Driver for all platfrom            ***\r"
echo -e "******************************************************\r"
echo -e "\r"

echo ********win8-X86-fre Build********
CMD /c cywdkbuild x86 fre win7 win8

echo ********win8-X64-fre Build********
CMD /c cywdkbuild x64 fre win7 win 8

echo ********win7-X86-fre Build********
CMD /c cywdkbuild x86 fre win7 win7

echo ********win7-X64-fre Build********
CMD /c cywdkbuild x64 fre win7 win7

echo ********Vista-X86-fre Build********
CMD /c cywdkbuild x86 fre wlh vista

echo ********Vista-X64-fre Build********
CMD /c cywdkbuild x64 fre wlh vista

echo ********XP-X86-fre Build********
CMD /c cywdkbuild x86 fre wxp wxp

rem ************ CHECKED BUILD *********

echo ********win8-X86-chk Build********
rem CMD /c cywdkbuild x86 chk win7 win8

echo ********win8-X64-chk Build********
rem CMD /c cywdkbuild x64 chk win7 win 8

echo ********win7-X86-chk Build********
rem CMD /c cywdkbuild x86 chk win7 win7

echo ********win7-X64-chk Build********
rem CMD /c cywdkbuild x64 chk win7 win7

echo ********Vista-X86-chk Build********
rem CMD /c cywdkbuild x86 chk wlh vista

echo ********Vista-X64-chk Build********
rem CMD /c cywdkbuild x64 chk wlh vista

echo ********XP-X86-chk Build********
rem CMD /c cywdkbuild x86 chk wxp wxp
