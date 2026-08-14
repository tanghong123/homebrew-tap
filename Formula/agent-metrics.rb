class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.4"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.4/agent-metrics-0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "d09068bfd72e667094a2738dbd7e2d7bf9c98b3d1c1c87eb8a598e9e210a99f1"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.4/agent-metrics-0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "998fc72b5a2d667f5a2f61657614a92195099245325337bd51c8de5d790796ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.4/agent-metrics-0.5.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d49b5deced77563cf7c3db99290cf1c8110d751cbd9997ffb29c840b8b312b35"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.4/agent-metrics-0.5.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ce5db7e554f0d27a120224e539a4eb6c6acf3423e1e712f1b561ba325624cfd"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
