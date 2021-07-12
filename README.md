# TBB DevOps Uzmanı Yetiştirme Eğitimi Bitirme Ödevi

## Docker - Kubernetes
Bu projede Python Flask ve MySQL kullananan bir uygulama Dockerize edilmiştir. Oluşturulan Docker Image'ı Docker Hub'a pushlanıp Kubernetes ile dev, test ve prod ortamlarına deploy edilmiştir. CI/CD süreci Jenkins üzerinden yönetilmiştir. 

Uygulama deploy edildikten sonra MySQL Workbench içinde init.sql çalıştırılıp 'http://ClusterIP:NodePort/data' adresine istek atıldığında MySQL içindeki dataları getirmektedir. Eğer uygulama çalışıyorsa 'http://ClusterIP:NodePort/healtcheck' adresine atılan isteğin sonucu olarak "status:ok" cevabı dönmektir.

## Ansible

Ansible kullanarak server'a ve/veya client'lara rsyslog, netstat, tcpdump paketleri yüklenmiştir. Kubernetes master'ından kubectl ve docker bilgileri toplanmıştır.

### Ansible tasklarını çalıştırmak için
```ansible-playbook -i hosts.ini roles.yaml -t [istenen playbook'un tag'i] -K``` ​komutuyla çalışmaktadır.


## PowerShell

PowerShell ile bir Web API'ye get ve post işlemleri yapılmıştır. Jenkins üzerinde Windows agent oluşturarak uzak makinada istenen bir servisi takip eden ve durduğunda çalıştıran script yazılmıştır.


Proje sunumu => https://docs.google.com/presentation/d/1tEra2DGV7cTRixD_6aL9shRezKz7ec9qpk1IpTzmHTE/edit?usp=sharing
