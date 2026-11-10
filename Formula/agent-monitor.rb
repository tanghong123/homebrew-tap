class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.501.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "90275047c9ba7eca4549023eec5e920313591a650c934b1fea4bae2ba7bcf297"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dda449d38925e3d06bfd2356f04b58379aface8e408cb7c7598f170034776ca0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "968be6bdda5643791ab671df2f29de1df187a6b179704efd473890ad6b89f041"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdde4f75f78b413c8903bec19bde1664d1ff0019d827160a65edbf6910c26165"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
