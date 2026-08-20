class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.22"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.22/agent-metrics-0.5.22-aarch64-apple-darwin.tar.gz"
      sha256 "6901715dd910b9ca510332669d9c814d91f0ef4ce56515fc412b0d6ea80030ba"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.22/agent-metrics-0.5.22-x86_64-apple-darwin.tar.gz"
      sha256 "00b09ebc7b0f687e99f5fa8b9899c22e74f51a47e2a283f3412e8b5a57c0a126"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.22/agent-metrics-0.5.22-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73e78d1218ec5eee6840b4628e8eba82208476d26dc5e06b3a0e43abc11b7c80"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.22/agent-metrics-0.5.22-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cec6646f8efb13665a3085364b046f22501af5c945c7eee2611b83ec53dd68aa"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
