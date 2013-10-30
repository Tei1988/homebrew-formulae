require 'formula'

class Urg < Formula
  homepage 'http://www.hokuyo-aut.co.jp/02sensor/07scanner/download/urg_programs/index.html'
  url 'http://www.hokuyo-aut.co.jp/02sensor/07scanner/download/urg_programs/urg-0.8.18.zip'
  sha1 'ef71d4e4a342122262427a6d1bb95569b5bc56c2'

  option :universal
 
  def install
    args = %W[--prefix=#{prefix} --enable-shared --disable-dependency-tracking]
    args << "--with-arch=#{Hardware::CPU.universal_archs.join(',')}" if build.universal?
    
    system "./configure", *args
    system "make install"
  end
end

