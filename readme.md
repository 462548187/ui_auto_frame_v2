###UI_auto_project��ܽ���:ʹ��pytest+selenium+allure
---
**Baseģ���װ����Ԫ�صĹ�������**
**Check_config_scriptģ���Ż������Ľű�**
**Commonģ���Ƿ�װ�Ķ�ȡ�����ļ��Ĺ���������������util������**
**Dataģ�飬���ڴ����������Դ����**
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
**��ϵ�ˣ��ɶ�-��ľľ**
**���䣺848257135@qq.com**
**���κ�ʹ����������ϵ��**
---
**selenium���طֲ�ʽ�������ã�**
**1������JDK����1.8��ʹ��javac ���java�����Ƿ��������**
**2������selenium-server-standalone�����ص�ַ��http://selenium-release.storage.googleapis.com/index.html����Ҫ��Ӧ�Լ����ص�selenium�汾**
**3�����ض�Ӧ���������driver�����õ�python�İ�װĿ¼(chrome��https://sites.google.com/a/chromium.org/chromedriver/downloads��firefox��https://github.com/mozilla/geckodriver/releases��ie��http://selenium-release.storage.googleapis.com/index.html?path=3.5/)**
**4������hub�ڵ㣨����ڵ㸺������ķַ��������ռ�ͳ�ƣ�java -jar selenium-server-standalone-3.5.0.jar -role hub��ps:�˿ڿ����޸ģ�**
**5������node�ڵ�java -jar selenium-server-standalone-3.5.0.jar -role node -port 5555 -hub http://localhost:4444/grid/register��ps:�˿ڿ����޸ģ���Ҫ���ö��ٸ�node�ڵ㣬ֻ��Ҫ�޸�port���ɣ�**
**6�����Դ��룺test_mul_node.py����������������򿪣�˵����������û����**