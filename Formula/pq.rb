class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.8/pq-v1.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "f4a8342979574b30af3df76eed1c5835603b2b0387d82162706446c3db3765e3"
    else
      url "https://pq.eorlov.org/dist/v1.0.8/pq-v1.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "01ed2fc46384667bbd984b20328ecf665aaf80d1ea3cda1bb45bc98a8ed3c089"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.8/pq-v1.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c98c5ab528eafeef544a482aba8e26953139512f24f4a34ed965bff42538331"
    else
      url "https://pq.eorlov.org/dist/v1.0.8/pq-v1.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64781e348587365060973ccd5ee629e2c40e9306954a93d9ff7b2732f549d014"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
