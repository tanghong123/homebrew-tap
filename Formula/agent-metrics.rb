class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.4.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.4.0/agent-metrics-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6a5ea78fae1193a5299cadb4caec76560271deb291003dabd6d075b3fb2e30e7"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.4.0/agent-metrics-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "84cff9e586a6f983e162914280923e598299857ace9771f0c07e97e701027e53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.4.0/agent-metrics-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eaf84b97cf8b77ae8338923236df2259df67f4add78fb7fad7c30381ce81fd9c"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.4.0/agent-metrics-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "825f100897dc14a5e755bb64519590a1705467a605b968ebf4132a15686ad89b"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
