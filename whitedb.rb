require 'formula'

class Whitedb < Formula
  homepage 'http://whitedb.org/'
  url 'http://whitedb.org/whitedb-0.7.0.tar.gz'
  sha1 '60261db37f2265c093aa6a7f6580d33329a3c2d4'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end

