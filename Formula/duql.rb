class Duql < Formula
  desc "DUQL - Dangerously Usable Query Language"
  homepage "https://duql.dev"
  url "https://github.com/theduql/duql/archive/v0.0.1.tar.gz"
  sha256 "the_sha256_of_your_tarball"
  license "MIT"

  depends_on "go" => :build

  def install
    cd "duqlc/cmd/duql" do
      system "go", "build", "-o", bin/"duql", "."
    end
  end

  test do
    assert_match "DUQL version 0.0.1", shell_output("#{bin}/duql --version")
  end
end
