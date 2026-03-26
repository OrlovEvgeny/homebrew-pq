class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.3/pq-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "00181bff614806b05840627be0eb74779732e3187da9d5d4d6ad485d01ee6eaa"
    else
      url "https://pq.eorlov.org/dist/v1.0.3/pq-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "a2ac8fdacfab969868ffae344ab1d9bb8c21f822e5da4684141d7eb2e78e883d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.3/pq-v1.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87e9db3d715dabba986a1033560c36270aee13a9fa960ef87ea44231b1a25576"
    else
      url "https://pq.eorlov.org/dist/v1.0.3/pq-v1.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "633c5bab17d378ade9a6abb0e9662e3a740def866f183c1bec638cb5415f5ab9"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
