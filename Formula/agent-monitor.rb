class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.222.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a734eacbefde7b850698ef1c54db840ab5debb6122fc33584be843f52006f89f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4e3434f997cdc927b594fb6739637bf1da1e66bd412d2b0dc08b7153e161eaaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37f28c50ae58c095064df76a48d882b618cf6564f7ae5ed7e711cb40b7580c8e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e27e6ec0afcc48649cd5d127bb85ac69b82179776589a6a99f361d0c44528eb1"
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
