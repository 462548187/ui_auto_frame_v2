::������������������зֲ�ʽ���ԣ�ǰ��������ִ��start_server.bat�ű�������hub�Լ�����node�ڵ�
::��������selenium-server-standalone����
@echo off
start /D "Grid_server/selenium_run_script" run_by_chrome.bat
start /D "Grid_server/selenium_run_script" run_by_firefox.bat
start /D "Grid_server/selenium_run_script" run_by_ie.bat