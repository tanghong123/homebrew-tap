class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.281.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0062a9dda9bdd5f19faaec4211332d5eab4bc7a5160a3be762767fff6ad1eba9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "130838cd685436504157ee321bd2dec9499d8ed3495f00ec3f4b40084c2a4f7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d1d6063a6e1839cacde7e13c0580433c88fe719e1fce6aa91a2690ee36101d6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7dfa3a3bd0ae2c5563f92112dcfa72d5973db9b8b262ac0bfa56dbc121cc90d1"
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
