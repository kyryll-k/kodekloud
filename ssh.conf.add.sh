#!/bin/bash
### vim .ssh/config
touch ~/.ssh/config && chmod 600 ~/.ssh/config
# --------- SSH-CONFIG
 echo "Host stapp01" >> ~/.ssh/config
 echo "User tony" >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host stapp02" >> ~/.ssh/config
 echo "User steve " >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host stapp03" >> ~/.ssh/config
 echo "User banner" >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host stlb01" >> ~/.ssh/config
 echo "User loki " >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host stdb01" >> ~/.ssh/config
 echo "User peter " >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host ststor01" >> ~/.ssh/config
 echo "User natasha " >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host stbkp01" >> ~/.ssh/config
 echo "User clint " >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "Host stmail01" >> ~/.ssh/config
 echo "User groot " >> ~/.ssh/config
 echo "   " >> ~/.ssh/config
 echo "#PAS stapp01 tony Ir0nM@n " >> ~/.ssh/config
 echo "#PAS stapp02 steve Am3ric@ " >> ~/.ssh/config
 echo "#PAS stapp03 banner BigGr33n " >> ~/.ssh/config
 echo "#PAS stlb01 loki Mischi3f " >> ~/.ssh/config
 echo "#PAS stdb01 peter Sp!dy " >> ~/.ssh/config
 echo "#PAS ststor01 natasha Bl@kW " >> ~/.ssh/config
 echo "#PAS stbkp01 clint H@wk3y3 " >> ~/.ssh/config
 echo "#PAS stmail01 groot Gr00T123 " >> ~/.ssh/config

