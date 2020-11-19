# nginx-https

Create nginx webserver(ssl) in docker.

```bash
git clone --depth 1 https://github.com/HataYuki/nginx-https.git
cd nginx-https
docker build -t nginx-https .
docker run -d -p 3000:443 -v /home/{username}/{your}/{mount}/{target}:/var/www/html
```