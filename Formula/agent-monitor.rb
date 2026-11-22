class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.554.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0489ffa21f93b83988fb413bd98e1c9569926b466b2e5452613875afdca13c8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "59dd74863204feec7132aa2f98971c49b16901718add37d7e3f9e7e7d5aad6ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad6b8dbafda1316200b32e858cab01d9ac833c07dc6e9bdd59c2a5930c3ecd04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7cc52deafe3288cf368ffc13b3c7b5124943096ea73aec42967ca229ebfbb55"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
