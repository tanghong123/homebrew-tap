class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.575.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9fb26132d9a27588882cad7f066596756c1f01e7627d3e94f813fb2abb312982"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fcc0dbea8280069c39579feb866d9b916322f6fe43e4586409cf2053b121b2fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94091d2b8c2763cc14a101d73575b601935c0e62e88eabefe18a0d92d2f3f903"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3063207110634773bb341c3d44c908c1a5257cb3356af00c064bac5f9078e657"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
