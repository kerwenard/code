# enum赋值

```java
    public static enum Instr {
        Send(0x00),
        Return(0x01);

        private final byte value;

        Instr(byte value) {
            this.value = value;
        }

        public byte getValue() {
            return value;
        }
    }
```