class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.7/pq-v1.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "862e6832903792b1c85e836d2bcf23f7047e77615db07b9f1092d2dbe4272437"
    else
      url "https://pq.eorlov.org/dist/v1.0.7/pq-v1.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "4ab7cf626f87b62a8670c561339e1831f6b5b15ec8303e45bf1c3e49f88ba00f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.7/pq-v1.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb926b525337d1d9474e39c73437c884c983a721095f03c8f29944a14e1f21b7"
    else
      url "https://pq.eorlov.org/dist/v1.0.7/pq-v1.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa64f812e0c1d9ef827ef03e709d5ca70193e0330c22957ad372c60c12fda590"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
