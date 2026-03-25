class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.2/pq-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "fe4dd737574256e9e6000fd525e3fa51324b3f828514089b9eda83486e4100d4"
    else
      url "https://pq.eorlov.org/dist/v1.0.2/pq-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "6262c98e6172ac0f823d82dc5708cf3be115877865e1fd453e05a8060d418509"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.2/pq-v1.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34123fb3d807cd48ad4a5b05dfd502bc00261728b4c8b0ad82b103f6e4a23ef3"
    else
      url "https://pq.eorlov.org/dist/v1.0.2/pq-v1.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d3f8848f319f0d565dace144adde130e9ac61ee2d5c97185dcd552db654aac8"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
