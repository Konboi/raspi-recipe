package "curl"
package "autoconf"
package "automake"
package "ncurses-dev"
package "gettext"
package "libghc-zlib-dev"
package "wget"
package "gcc"

execute "install new git version" do
  not_if "which git"
  command "cd /tmp && wget https://www.kernel.org/pub/software/scm/git/git-2.4.8.tar.gz && tar -zxvf git-2.4.8.tar.gz && cd git-2.4.8/ && ./configure --prefix=/usr/local --with-curl --with-expat && sudo make && sudo make install"
end
