class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.13"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.13/agent-metrics-0.5.13-aarch64-apple-darwin.tar.gz"
      sha256 "6bc455e48d44f80ccb6623f99828aa13fadcb7c7e923a43c9cd4ee6a95c22fa4"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.13/agent-metrics-0.5.13-x86_64-apple-darwin.tar.gz"
      sha256 "de5715a917c1801a4b127c11171783cc6dd80ed22e134b6c03886a76cca2c576"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.13/agent-metrics-0.5.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "131e96c6c04962ae57324ff15e355164aeddf79ad64e56d9a4a2d751df461c4f"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.13/agent-metrics-0.5.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf09de3c6371f6e954155c08a861991316ab1cfd0d6fcd66a03a85eef37a65f7"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
