class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.359.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "96309311b7030142938b2e78633ed914fd70489a270c480423bbc428b51ab1f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8267e7761cc1b6e5d8cb69c823847b8a174cd88aa3e33e96a55d87ef8164759d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a28463fd6f174addcc7252a5cca329772064f00470a80d13978f80c0284025e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62006547cc6689128509beecb97651c1a22d99d785b87bcecc90be47a3868e02"
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
