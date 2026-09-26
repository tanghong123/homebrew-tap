class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.308.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "986252c91b1b7e199eff279dc4b2631fb036828ebeb23d23348011a046350d70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e896d24b1859e7ad4f86094262ae419673a88e85e4ce370f3830bc397b467af8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "210932fb07408fbac228c68c4aeb4226bb5ee897c5e7d4eb7532f9f67de53ac8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4cf6a608eaef4cf7c6952591ce46e81b5723c90f14294da2776825841e08ede"
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
