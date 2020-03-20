FROM nginx:stable-alpine

RUN mkdir -p /var/www

COPY STAR_chaordicsystems_com.crt /etc/nginx
COPY STAR_chaordicsystems_com.key /etc/nginx

# COPY vhosts/nginx/static.chaordicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/wishlist.neemu.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/static-banner.chaordicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/banner.chaordicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/onsite.chaordicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/test-banner.chaordicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/onsite-server-surf.chaordicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/recs.chaor?dicsystems.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/api.linximpulse.com.conf /etc/nginx/conf.d
# COPY vhosts/nginx/poscompra.shopconvert.com.br.conf /etc/nginx/conf.d
# COPY vhosts/nginx/shopad.shopconvert.com.br.conf /etc/nginx/conf.d
# COPY vhosts/nginx/suite.linximpulse.net.conf /etc/nginx/conf.d
COPY vhosts/nginx/hello.com.conf /etc/nginx/conf.d

EXPOSE 80
EXPOSE 443
