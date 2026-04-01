class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.5/pq-v1.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "30ae6bd62b4d52be5bb704a6dada511ee3faba6b0a9b157c02955d9c9e46ba8a"
    else
      url "https://pq.eorlov.org/dist/v1.0.5/pq-v1.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "f6064416fabf9cd0b1777bf26ad2c42ee4ecdc9b5f22db11a5e3448d66710fb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.5/pq-v1.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c4b154ba1cb285ad7b5970bb5351072d399da66e6c6322ee46f9a972746c92e"
    else
      url "https://pq.eorlov.org/dist/v1.0.5/pq-v1.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f431899c36d1611b0749875375c740cd1dd1e81cd7184aa4028147d4a54b6262"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
