# 反射用String类型名称获取变量值

```java
        try {
            Field t = DcDalitekButtonConfiguration.class.getDeclaredField(varName);
            t.setAccessible(true);
            DcDalitekButtonConfiguration user = new DcDalitekButtonConfiguration();
            Object var = t.get(user);
            return var;
        } catch (Exception e) {
            return null;
        }
    }
```