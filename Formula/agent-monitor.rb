class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.497.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "44a7a78d6bcd9d129cc49a87925b47d803bf26f9da26c8b537c85295335603e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "42eddc3c251d08037de483d36664590ac91c8e5180d18223e0d3cefa30233d37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4780aaa45178ff2a8dc2ee77dd9c2bafb5ae2f16e4c6de397bb44d4aee4623e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "600a4429096c2ac3b6034c083813dd60bd6125e4c213606f655f325e3ede59c7"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
