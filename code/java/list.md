# list

```java
    //不打乱排序的数组
    Map<String, String> MOD = new LinkedHashMap<String, String>();

    //byte数组比较是否相等
    Arrays.equals(a,b);

    //byte数组转16进制string
    public static String bytesToHexString(byte[] src){
        StringBuilder stringBuilder = new StringBuilder("");
        if (src == null || src.length <= 0) {
            return null;
        }
        for (int i = 0; i < src.length; i++) {
            int v = src[i] & 0xFF;
            String hv = Integer.toHexString(v);
            if (hv.length() < 2) {
                stringBuilder.append(0);
            }
            stringBuilder.append(hv);
        }
        return stringBuilder.toString();
    }

    //16进制string转byte数组
    public static byte[] hexStringToBytes(String data) {
        String str = data.replaceAll("0x", "").replaceAll("\\s+", "");
        if (str == null || str.trim().equals("")) {
            return new byte[0];
        }

        byte[] bytes = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            String subStr = str.substring(i * 2, i * 2 + 2);
            bytes[i] = (byte) Integer.parseInt(subStr, 16);
        }

        return bytes;
    }

    //数组切割
    System.arraycopy(src, srcPos, dest, destPos, length);

    // src:源数组
    // srcPos:源数组要复制的起始位置
    // dest:目的数组
    // destPos:目的数组放置的起始位置
    // length:复制的长度
```