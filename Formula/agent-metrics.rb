class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.16"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.16/agent-metrics-0.5.16-aarch64-apple-darwin.tar.gz"
      sha256 "74d625ea52787938227fb6fff1930e792ceb15dd21e36d26abb8c43806c396f7"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.16/agent-metrics-0.5.16-x86_64-apple-darwin.tar.gz"
      sha256 "6f6f8ce4ec055ed318f4d61f321ecad4b94071a037b5b4a8254971026f0d30dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.16/agent-metrics-0.5.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4e1a2c5bc538228c3291c33ab986e06d69409d3a0a539c69005c3a17ffa3125"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.16/agent-metrics-0.5.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08dd344426a78a3508f943858e5f3001a8d7bc2e52bea6ee35af422752cbaac3"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
