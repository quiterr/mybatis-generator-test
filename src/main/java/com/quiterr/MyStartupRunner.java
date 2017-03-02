package com.quiterr;

import com.quiterr.dao.DevicesMapper;
import com.quiterr.model.Devices;
import com.quiterr.model.DevicesExample;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by huangchen on 2016/5/19.
 */

@Component
public class MyStartupRunner implements CommandLineRunner {

    @Autowired
    private DevicesMapper devicesMapper;


    private static org.slf4j.Logger logger = LoggerFactory.getLogger(MyStartupRunner.class);

    @Override
    public void run(String... args) throws Exception {
        //从数据库查询各类设备的数量
        String pos="机房";
        DevicesExample devicesExample = new DevicesExample();
        DevicesExample.Criteria criteria = devicesExample.createCriteria();
        criteria.andPositionEqualTo(pos);
        List<Devices> deviceList = devicesMapper.selectByExample(devicesExample);
        for(Devices devices: deviceList){
            logger.info(devices.toString());
        }
    }

}
