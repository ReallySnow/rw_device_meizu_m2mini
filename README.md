RedWorf Recovery（Nougat）
===========================

Warning
---------------

 * Using this Rceovery will cause most ROMs to fail to be swiped, and you need to modify the ROM's Brush script.

Getting Started
---------------

Download manifes for RedWorf

        repo init -u git://github.com/RedWolfRecovery/rw_manifest.git -b rw-n
     
         repo sync
    
Then
       
        cd <source-dir>
        
        git clone https://github.com/ReallySnow/rw_device_meizu_m2mini.git -b master device/meizu/m2mini
        
          . build/envsetup.sh; lunch omni_m2mini-eng; mka recoveryimage -j64
          
By ReallySnow
