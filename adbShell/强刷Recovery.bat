@echo off
echo ע��Recovery����һ��ˢ����ȷ��ľ����ƿسɹ�
echo =====���ڸ���zergRush�ļ�=====
adb push zergRush /data/local/zergRush
echo ====���������ʱ�ļ�====
adb shell rm -r /data/local/tmp/*
echo ====�����޸�zergRushȨ�޲�ִ��====
adb shell chmod 777 /data/local/zergRush
adb shell /data/local/zergRush
echo ====��ȴ�20�룬������ִ����====
ping /n 1 /w 20000 1.0.0.1>nul
echo ====���ڸ���ˢ���ļ�====
adb push flash_image /data/flash_image
adb push %1 /data/recovery.img
echo ====����ˢ�������RECOVERY====
adb shell chmod 777 /data/flash_image
adb shell /data/flash_image recovery /data/recovery.img
echo ====����ɾ��ʱʹ�õ�recovery.img====
adb shell rm -r /data/recovery.img
echo ====������RECOVBERYģʽ====
echo ====......�������......====
adb shell reboot recovery
@echo off
pause