### ui_auto_frame��ܽ���:ʹ��pytest+selenium+allure

---

**Baseģ���װ����Ԫ�صĹ�������**
**Check_config_scriptģ���Ż������Ľű�**
**Commonģ���Ƿ�װ�Ķ�ȡ�����ļ��Ĺ���������������util������**
**Confģ���Ǵ��ȫ�������ļ�**
**Grid_serverģ����selenium-server��hub��node������bat�ű����Լ�����selenium��������������в��������**
**Logsģ�飬����������־�ļ�**
**PageObjectģ����ȡҳ������װ������������**
**Reportģ�飬��Ų��Ա��棬�Լ����Ա��������ģ��allure**
**TestCasesģ�飬���ڴ�Ų���case**

---

**���������Ҫ��Ϊ���㣬Base�㡢PageObject�㡢TestCase�㣬���ô�ͳ�Ļ������Ĵ�ֱ�ܹ�ģʽ��**
**Ԫ�ع�������������װ�����Base��**
**ҳ��Ԫ�ز�������ڵڶ���PageObject�㣬�������ҳ��Ԫ�ر仯��ֱ���ڵڶ�����Ӧ��Page�����޸ļ���**
**����case�����TestCases�㣬��Ҫ�����ԵȲ���**

---

**��װ����Ҫ�İ���ʹ��pycharm������Ŀ����pycharm��terminal��ֻҪ�� requirements.txt ���ڵ�Ŀ¼�£�ʹ���������� �������ڵ�ǰ�� python �����е���������Ҫ�İ���**
`pip install -r requirements.txt`

---
**����˵����**
**�������ߣ�pycharm**
**python�汾��python3.8**
**����case����ڣ�run.py**
**�������Chrome**
**webdriver��ѡ���ӦChrome�汾��driver�����ҷ���python�İ�װĿ¼��**

---

**���κ�ʹ����������ϵ��**

---

**selenium���طֲ�ʽ�������ã�**
*1������JDK����1.8��ʹ��javac ���java�����Ƿ��������*
*2������selenium-server-standalone�����ص�ַ��http://selenium-release.storage.googleapis.com/index.html����Ҫ��Ӧ�Լ����ص�selenium�汾*
*3�����ض�Ӧ���������driver�����õ�python�İ�װĿ¼(chrome��https://sites.google.com/a/chromium.org/chromedriver/downloads��firefox��https://github.com/mozilla/geckodriver/releases��ie��http://selenium-release.storage.googleapis.com/index.html?path=3.5/)*
*4������hub�ڵ㣨����ڵ㸺������ķַ��������ռ�ͳ�ƣ�java -jar selenium-server-standalone-3.5.0.jar -role hub��ps:�˿ڿ����޸ģ�*
*5������node�ڵ�java -jar selenium-server-standalone-3.5.0.jar -role node -port 5555 -hub http://localhost:4444/grid/register��ps:�˿ڿ����޸ģ���Ҫ���ö��ٸ�node�ڵ㣬ֻ��Ҫ�޸�port���ɣ�*
*6�����Դ��룺test_mul_node.py����������������򿪣�˵����������û����*



---

**���������ֲ�ʽ���Է���**

1��ִ��start_server.bat������hub��node��ʹ���������¼127.0.0.1:4444�����console����������node�Ľڵ���Ϣ����ʾ�ֲ�ʽ���������ɹ�

2��ִ��start_run_all_browser���������������ִ�нű�ģʽ��IE��Ҫ������������ã������ִ��ʧ�ܣ�

---

**docker�����ֲ�ʽ���Է���**

һ����ȡselenium��docker����

~~~ ������ȡ
docker pull selenium/hub
docker pull selenium/node-firefox
docker pull selenium/node-chrome
~~~

������龵���Ƿ���ȡ�ɹ�

~~~ ��龵��
docker images | grep selenium
~~~

��������docker����

~~~ ����docker����
docker run -p 5555:4444 -d --name hub selenium/hub
docker run -P -d --link hub:hub --name firefox selenimu/node-firefox
docker run -P -d --link hub:hub --name chrome selenimu/node-chrome
~~~

�ġ�����Ƿ������ɹ�

ʹ��docker������������IP+ӳ��Ķ˿ڽ��з��ʣ��鿴console���鿴��hub�ڵ㽨�����ӵ�node�ڵ��IP�Ͷ˿ڵ���Ϣ�Ƿ���ȷ

�塢����ģʽ����ѡ��

1��server+browser����ģʽ��ʹ�÷���˺�node������һ��ľ���

~~~ ����
docker pull selenium/standalone-chrome-debug
docker pull selenium/standalone-firefox-debug
~~~

2��server+node(browser)����ģʽ��ʹ��hub+node�ķ�ʽ������ʹ��debug������־

~~~ ����
docker pull selenium/standalone-chrome-debug
docker pull selenium/standalone-firefox-debug
~~~

~~~ ������������
docker run -d -p 5900:5900 --link hub:hub selenium/node-chrome-debug
~~~

�鿴Linux����������е�ͼ�ν���

ʹ��vnc viewer�����ص�ַ��`https://www.realvnc.com/en/connect/download/viewer/windows/`

����docker���ڻ�����������IP+ӳ��Ķ˿ڣ�5900���������ӣ�Ĭ�����룺secret