class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.27"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.27/agent-metrics-0.5.27-aarch64-apple-darwin.tar.gz"
      sha256 "8e7e12f0311c07ac07d36126eaedfdaf7e9c5127b0d2be38dcbbd0f319bffe58"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.27/agent-metrics-0.5.27-x86_64-apple-darwin.tar.gz"
      sha256 "b5f0a7829dca3938181802d68b315e010d5f18817d207979b76129a0bce9eb68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.27/agent-metrics-0.5.27-aarch64-unknown-linux-musl.tar.gz"
      sha256 "806c19bd80529782a8a3bee79ebab8be8b74d120bf0c9d78969a17851818417e"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.27/agent-metrics-0.5.27-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d691a98fe236f562f8324f4584a5fbf22df5be69449fdcc48a2ebd23f065c59"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
