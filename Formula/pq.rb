class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.1/pq-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "7eabb05b93108d3db13e84e78106663cad9ab011616933983504c6d11642616c"
    else
      url "https://pq.eorlov.org/dist/v1.0.1/pq-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "4513bba538736fffd9ff8f1545f92f1851a5b93f428a365f9de4ce7bc9948c14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.1/pq-v1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "301c1ee56b1e755fdd7810dc421cd76d3235e226b5b334d17c3e35fb9d5e5d8a"
    else
      url "https://pq.eorlov.org/dist/v1.0.1/pq-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a2186bc41f3888c9ae93b4e4e5d6f77dabf0c19d70a504dec53ce6fdcbe09d0"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
