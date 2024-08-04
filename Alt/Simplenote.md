[jenit@host-15 Simplenote-linux-2.21.0-x64]$ ./simplenote

[8700:0803/202846.173268:FATAL:setuid_sandbox_host.cc(158)] The SUID sandbox helper binary was found, but is not configured correctly. Rather than run without sandboxing I'm aborting now. You need to make sure that /home/jenit/Загрузки/Simplenote-linux-2.21.0-x64/chrome-sandbox is owned by root and has mode 4755.
Ловушка трассировки/останова

```
su -
pass
chmod 4755 chrome-sandbox
```

[jenit@host-15 Simplenote-linux-2.21.0-x64]$ ./simplenote --no-sandbox

