class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.177.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "dd1b5b4c4f4ab98a14bbd5e84a39621c16b0dbfea4e8be4b8138d9edb15ff207"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b3febf2a02f2f556692ae7b8c6f3ed3995e586680b19491f74ac33b493536607"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ccd99b25b050e5a5512d0c4135a47fe881a35d227f8b45c93ecfab92119b2a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fb0d00aaf2a4789d167fc821dafbf346d3a9feb327b3e43ff5a3b419cef4fbd"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
