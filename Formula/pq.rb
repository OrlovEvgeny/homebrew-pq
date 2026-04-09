class Pq < Formula
  desc "The Swiss Army knife of Parquet. Inspect, transform, and operate on Parquet files from your terminal"
  homepage "https://github.com/OrlovEvgeny/pq"
  license "MIT"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.6/pq-v1.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "03cc09137e645ba5ff8aaf393342e55cb0caf66e45649939e74a337a92a64b14"
    else
      url "https://pq.eorlov.org/dist/v1.0.6/pq-v1.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "74bb924b56f8c2e1c00af313c476d472755e1548e13a915a4cbee7f2488ac702"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://pq.eorlov.org/dist/v1.0.6/pq-v1.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9abc2633db4da5081c7e8b67b701295cebb606087eb96ed2ee63e3efadd4125"
    else
      url "https://pq.eorlov.org/dist/v1.0.6/pq-v1.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b98d882df793541d02d002baa8aea6d93ccbb10ab43a284fed7b803f24f7662"
    end
  end

  def install
    bin.install "pq"
  end

  test do
    assert_match "pq #{version}", shell_output("#{bin}/pq --version")
  end
end
