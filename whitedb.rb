require 'formula'

class Whitedb < Formula
  homepage 'http://whitedb.org/'
  url 'http://whitedb.org/whitedb-0.7.0.tar.gz'
  md5 '1fc87b02eaf230fc45c040a2ba33bbd0'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end

