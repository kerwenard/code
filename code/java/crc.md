# crc校验

```java
    public static byte[] CRC16(byte[] date) {
        byte[] ret_crc = new byte[2];
        byte[] date1 = new byte[date.length - 2];
        for (int i = 0; i < date.length - 2; i++) {
            date1[i] = date[i];
        }
        int CRC = 0x0000ffff;
        int POLYNOMIAL = 0x0000a001;
        int i, j;
        for (i = 0; i < date1.length; i++) {
            CRC ^= (date1[i] & 0x000000ff);
            for (j = 0; j < 8; j++) {
                if ((CRC & 0x00000001) != 0) {
                    CRC >>= 1;
                    CRC ^= POLYNOMIAL;
                } else {
                    CRC >>= 1;
                }
            }
        }
        ret_crc[1] = (byte) (CRC / 256 & 0xFF);
        ret_crc[0] = (byte) (CRC % 256 & 0xFF);
        return ret_crc;
    }

    public static byte[] CRC16_Modbus(byte[] item) {
        byte[] ret = new byte[2];
        int crc16 = 0xFFFF;
        for (int i = 0; i < item.length - 2; i++) {
            crc16 ^= (item[i] & 0xFF);
            for (int j = 0; j < 8; j++) {
                if ((crc16 & 0x01) == 1) {
                    crc16 = (crc16 >> 1) ^ 0xA001;
                } else {
                    crc16 = crc16 >> 1;
                }
            }
        }
        ret[0] = (byte) (crc16 / 256);// 高8位
        ret[1] = (byte) (crc16 % 256);// 低8位
        return ret;
    }

    public static boolean checkCommandFormat(byte[] data) {
        if (data == null || data.length != 8) {
            return false;
        }

        byte[] crc = InstrCheck.CRC16_Modbus(data);
        if (data[data.length - 2] == crc[1] && data[data.length - 1] == crc[0]) {
            return true;
        }
        return false;
    }

    public static byte getAddressFromCommand(byte[] data) {
        return data[0];
    }
```